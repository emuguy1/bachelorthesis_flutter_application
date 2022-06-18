var getItemsQuery = """query GetItems(\$id: ID!, \$cursor: String) {
                          node (id: \$id) {
                              id
                              ...on Person{
                                  id
                                  items(first: 10, after:\$cursor){
                                      edges{
                                          node {
                                              id
                                              ... on Item{
                                                  id
                                                  name
                                                  description
                                              }
                                          }
                                      }
                                      pageInfo {
                                          hasNextPage
                                          endCursor
                                      }
                                  }
                              }
                          }
                      }
                      """;

var getConversationsQuery =
    """query GetConversations(\$id: ID!, \$cursor: String) {
        node (id: \$id) {
            id
            ...on Person{
                firstName
                lastName
                conversations(first: 10, after: \$cursor){
                    edges{
                        node {
                            ... on Conversation{
                                id
                                lastMessage
                                lastMessageAt
                                participants {
                                    id
                                    firstName
                                    lastName
                                }
                            }
                        }
                    }
                    pageInfo {
                        hasNextPage
                        endCursor
                    }
                }
            }
        }
    }
    """;

var loginMutation =
"""mutation login(\$email: String!, \$password: String!) {
                        login(email: \$email, password: \$password)
                      }
                      """;

var meQuery =
  """query me {
    me {
      id
      firstName
      lastName
    }
  }""";

var messagesFromIdQuery =
    """query GetMessages(\$id: ID!, \$cursor: String) {
    node (id: \$id) {
        id
        ...on Conversation{
            participants {
                firstName
                lastName
                id
            }
            messages(first: 10, after: \$cursor){
                edges {
                    node{
                        id
                        ...on Message{
                            message
                            timestamp
                            readAt
                            recipient {
                                id

                            }
                            sender {
                                id
                            }
                        }
                    }
                }
                pageInfo {
                    hasNextPage
                    endCursor
                }
            }
        }
    }
}""";

var postMessageMutation="""mutation postMessage(\$recipientId: ID!, \$message: String!) {
    postMessage(recipientId: \$recipientId, message: \$message)
} """;
