# Fork of the SURF Nginx component for ResearchCloud

Original repo: https://gitlab.com/rsc-surf-nl/plugins/plugin-nginx

The original component exhibits some behaviour undesirable on containers / in test environment, such as enabling SSL and running letsencrypt. This fork conditionally disables that behavior. It is used in https://github.com/UtrechtUniversity/SRC-test-workspace/
