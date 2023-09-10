// git-czのテンプレートを設定する
module.exports = {
  disableEmoji: false,
  format: "{type}: {emoji}{subject}",
  list: [
    "feat",
    "update",
    "change",
    "design",
    "remove",
    "fix",
    "test",
    "docs",
    "chore",
    "refactor",
    "release",
    "perf",
    "ci",
  ],
  maxMessageLength: 64,
  minMessageLength: 3,
  questions: ["type", "subject", "body", "issues"],
  types: {
    feat: {
      description: "新機能の追加",
      emoji: "✨",
      value: "feat",
    },
    update: {
      description: "バグではない機能修正",
      emoji: "⤴️",
      value: "update",
    },
    change: {
      description: "仕様変更による機能の変更",
      emoji: "💥",
      value: "change",
    },
    design: {
      description: "デザイン調整",
      emoji: "💄",
      value: "design",
    },
    remove: {
      description: "機能/ファイルの削除",
      emoji: "🔥",
      value: "remove",
    },
    fix: {
      description: "バグ修正",
      emoji: "🐛",
      value: "fix",
    },
    test: {
      description: "テスト関連",
      emoji: "🧪",
      value: "test",
    },
    docs: {
      description: "ドキュメントの更新",
      emoji: "📚",
      value: "docs",
    },
    chore: {
      description: "ビルド/補助ツール/ライブラリ関連",
      emoji: "🤖",
      value: "chore",
    },
    refactor: {
      description: "リファクタリング",
      emoji: "🔄",
      value: "refactor",
    },
    release: {
      description: "デプロイ",
      emoji: "🚀",
      value: "release",
    },
    perf: {
      description: "パフォーマンスチューニング",
      emoji: "⚡️",
      value: "perf",
    },
    ci: {
      description: "CI関連の変更",
      emoji: "👷",
      value: "ci",
    },
  },
  messages: {
    type: "コミットする内容はどの型ですか:",
    subject: "変更内容を簡潔に書いてください:\n",
    body: "変更内容の詳細があれば書いてください:\n ",
    issues: "対応issueがあれば書いてください。例： #123:",
  },
};
