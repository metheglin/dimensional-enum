module Sample
  ENUM_ATTRIBUTES = {
    # ---------------------------
    # Core
    # ---------------------------
    core: {
      sale_state: {
        sale_planned: { id: 1, name: '売り出し見込み', number: 100 },
        sale_running: { id: 2, name: '売り出し中', number: 200 },
        sale_stopped: { id: 3, name: '売り止め', number: 300 },
        sale_on_nego: { id: 4, name: '商談中', number: 400 },
        sale_nego_completed: { id: 5, name: '成約済み', number: nil }
      },
      public_scope: {
        public_to_all:        { id: 1, name: '公開' },
        public_to_suggestees: { id: 2, name: '提案した会員にのみ公開' },
        public_to_none:       { id: 3, name: '非公開' },
      },
      status: {
        released: { id: 1, name: '入稿済み' },
        draft:    { id: 2, name: '下書き' },
        illegal:  { id: 3, name: '強制非表示' }
      }
    },
  }.freeze
end