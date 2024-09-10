return {
    "christoomey/vim-tmux-navigator",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<a-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<a-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<a-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<a-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        { "<a-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    }}
