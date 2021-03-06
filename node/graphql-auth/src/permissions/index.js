const { rule, and, shield } = require('graphql-shield')
const { getUserId } = require('../utils')

const rules = {
  isAuthenticatedUser: rule()((parent, args, context) => {
    const userId = getUserId(context)
    return userId
  }),
  isPostOwner: rule()(async (parent, { id }, context) => {
    const userId = getUserId(context)
    const author = await context.prisma
      .post({
        id,
      })
      .author()
    return userId === author.id
  }),
}

const permissions = shield({
  Query: {
    me: rules.isAuthenticatedUser,
    filterPosts: rule.isAuthenticatedUser,
    post: rule.isAuthenticatedUser,
  },
  Mutation: {
    createDraft: rules.isAuthenticatedUser,
    deletePost: rules.isPostOwner,
    publish: rules.isPostOwner,
  },
})

module.exports = {
  permissions,
}
