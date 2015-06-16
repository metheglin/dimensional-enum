module Sample
  ENUM_ATTRIBUTES = {
    # ---------------------------
    # Core
    # ---------------------------
    core: {
      sale_state: {
        sale_planned: { id: 1, name: '売り出し見込み' },
        sale_running: { id: 2, name: '売り出し中' },
        sale_stopped: { id: 3, name: '売り止め' },
        sale_on_nego: { id: 4, name: '商談中' },
        sale_nego_completed: { id: 5, name: '成約済み' }
      },
      public_scope: {
        public_to_all:        { id: 1, name: '公開' },
        public_to_suggestees: { id: 2, name: '提案した会員にのみ公開' },
        public_to_none:       { id: 3, name: '非公開' },
      },
      profile_scope_control: {
        show_for_all:        { id: 1, name: '全ユーザー' },
        show_for_members:    { id: 2, name: '一般会員' },
        show_for_bronzes:    { id: 3, name: 'ブロンズ会員' },
        show_for_silvers:    { id: 4, name: 'シルバー会員' },
        show_for_goalds:     { id: 5, name: 'ゴールド会員' },
        show_for_platinums:  { id: 6, name: 'プラチナ会員' },
        show_for_suggestees: { id: 7, name: '提案した会員' },
      },
      status: {
        released: { id: 1, name: '入稿済み' },
        draft:    { id: 2, name: '下書き' },
        illegal:  { id: 3, name: '強制非表示' }
      }
    },

    # ---------------------------
    # Profile
    # ---------------------------
    profile: {
      #
      # Required
      #
      available_type: {
        available_now: { id: 1, name: '即時' },
        available_with_consult: { id: 2, name: '要相談' },
        available_at: { id: 3, name: '期日指定' }
      },
      estate_agent_type: {
        agent_owner: { id: 1, name: '売主' },
        agent_proxy: { id: 2, name: '代理' },
        agent_dedicated_exclusive: { id: 3, name: '専属専任媒介' },
        agent_dedicated: { id: 4, name: '専任媒介' },
        agent_common: { id: 5, name: '一般媒介' },
        agent_others: { id: 6, name: 'その他仲介' }
      },
      allows_placement: {
        placement_denied: { id: 1, name: '不可' },
        placement_allowed: { id: 2, name: '可（他社取込不可）' },
        placement_succeeded_allowed: { id: 3, name: '可（他社取込可）' }
      },
      management_type: {
        managed_by_self: { id: 1, name: '自社' },
        managed_by_other: { id: 2, name: '先物' }
      },
      needs_private_road_fee: {
        private_road_fee_free: { id: 1, name: '無' },
        private_road_fee_required: { id: 2, name: '有' }
      },
      has_setback: {
        setback_free: { id: 1, name: '無' },
        setback_required: { id: 2, name: '有' }
      },
      available_road_state: {
        road_connected_1_side: { id: 1, name: '一方' },
        road_connected_2_side_at_corner: { id: 2, name: '二方（角地）' },
        road_connected_2_side_both: { id: 3, name: '二方（両面）' },
        road_connected_3_side: { id: 4, name: '三方' },
        road_connected_4_side: { id: 5, name: '四方' },
        road_connected_none: { id: 6, name: '接道なし' },
      },

      #
      # Optional
      #
      has_deposit_guaranty: {
        deposit_guaranty: { id: 1, name: '保証制度あり' },
        deposit_guaranty_others: { id: 2, name: 'その他' }
      },
      agent_commission: {
        agent_commission_required: { id: 1, name: '要' },
        agent_commission_not_required: { id: 2, name: '不要' },
        agent_commission_half: { id: 3, name: '半額' },
        agent_commission_others: { id: 4, name: 'その他' },
      },
      tap_water_type: {
        tap_water_from_public: { id: 1, name: '公営' },
        tap_water_private:     { id: 2, name: '私設' },
        tap_water_from_well:   { id: 3, name: '井戸' },
        tap_water_others:      { id: 4, name: 'その他' }
      },
      drainage_type: {
        drainage_to_public: { id: 1, name: '下水' },
        drainage_to_clear_well: { id: 2, name: '浄水槽' },
        drainage_to_vault: { id: 3, name: '汲取' },
        drainage_others: { id: 4, name: 'その他' }
      },
      gas_type: {
        gas_city: { id: 1, name: '都市' },
        gas_lp: { id: 2, name: 'プロパン' },
        gas_replaced_by_electric: { id: 3, name: 'オール電化' },
        gas_others: { id: 4, name: 'その他' }
      },
      rental_fee_payment_cycle: {
        rental_fee_payed_monthly: { id: 1, name: '月額' },
        rental_fee_payed_yearly: { id: 2, name: '年額' },
      }
    },

    # ---------------------------
    # Uniq
    # ---------------------------
    uniq: {
      #
      # DB columnと直接ひもづかない属性
      #
      story_upper_or_lower: ['地上', '地下'],
      #
      # Required
      #
      lot_measuring_method: {
        lot_measured_by_public: { id: 1, name: '公簿' },
        lot_measured_by_result: { id: 2, name: '実測' }
      },
      building_state: {
        building_vacant: { id: 1, name: '空き家' },
        building_resident: { id: 2, name: '居住中' },
        building_rented: { id: 3, name: '賃貸中' },
        building_under_construction: { id: 4, name: '建築中' },
        building_construction_completed: { id: 5, name: '完成済み' },
        building_before_construction: { id: 6, name: '未着工' },
        building_construction_pending: { id: 7, name: '未完成' },
      },
      building_lot_measuring_method: {
        building_lot_measured_by_public: { id: 1, name: '公簿' },
        building_lot_measured_by_result: { id: 2, name: '実測' }
      },
      use_of_land: {
        housing_land: { id: 1,  name: '宅地' },
        other_land: { id: 2, name: '雑種地' },
        rice_field: { id: 3, name: '田' },
        vege_field: { id: 4, name: '畑' },
        # 旧既存宅地:
        # 市街化調整区域(urban_controlled)における宅地で、
        # 都市計画施工前に既に宅地となっていた物件で、旧法律では開発を許されていた
        housing_land_in_urban_controlled: { id: 5, name: '旧既存宅地' },
        forest: { id: 6, name: '山林' },
        moor: { id: 7, name: '原野' }
      },
      admin_cost_payment_cycle: {
        admin_cost_none:          { id: 0, name: '無し' },
        admin_cost_payed_monthly: { id: 1, name: '月額' },
        admin_cost_payed_yearly:  { id: 2, name: '年額' }
      },
      fix_cost_payment_cycle: {
        fix_cost_none:          { id: 0, name: '無し' },
        fix_cost_payed_monthly: { id: 1, name: '月額' },
        fix_cost_payed_yearly:  { id: 2, name: '年額' }
      },
      administrator_work_shift: {
        administrator_none:      { id: 1, name: '無し' },
        administrator_resident:  { id: 2, name: '常駐' },
        administrator_shifting:  { id: 3, name: '日勤' },
        administrator_patrol:    { id: 4, name: '巡回' },
        administrator_part_time: { id: 5, name: '非常勤' },
      },
      administration_type: {
        admin_by_themselves: { id: 1, name: '自主管理' },
        admin_by_partially_commission: { id: 2, name: '一部委託' },
        admin_by_totally_commission: { id: 3, name: '全部委託' }
      },
      has_administrator_association: {
        administrator_association_exist: { id: 1, name: '有' },
        administrator_association_none: { id: 2, name: '無' }
      },
      condo_unit_measuring_method: {
        condo_unit_measured_by_public: { id: 1, name: '公簿' },
        condo_unit_measured_by_result: { id: 2, name: '実測' }
      },
      land_state: {
        land_vacant: { id: 1, name: '更地' },
        land_with_building: { id: 2, name: '建物あり' },
        land_with_parking: { id: 3, name: '駐車場' },
        land_with_building_to_demolish: { id: 4, name: '建物解体予定' },
        land_developing: { id: 5, name: '造成中' },
        land_with_others: { id: 6, name: 'その他' }
      },

      #
      # Optional
      #
      #other_cost_payment_cycle: {
      #  other_cost_payed_at_first: { id: 1, name: '物件取得時' },
      #  other_cost_payed_monthly: { id: 2, name: '月額' },
      #  other_cost_payed_yearly: { id: 3, name: '年額' },
      #  other_cost_payed_every_2y: { id: 4, name: '２年毎' },
      #  other_cost_payed_every_3y: { id: 5, name: '３年毎' }
      #},
      construction_type: {
        constructed_by_wood: { id: 1, name: '木造' },
        constructed_by_block: { id: 2, name: 'ブロック'  },
        constructed_by_iron_frame: { id: 3, name: '鉄骨' },
        constructed_by_rc: { id: 4, name: '鉄筋コンクリート(RC)' },
        constructed_by_src: { id: 5, name: '鉄骨鉄筋コンクリート(SRC)' },
        constructed_by_light_iron_frame: { id: 6, name: '軽量鉄骨' },
        constructed_by_heavy_iron_frame: { id: 7, name: '重量鉄骨' },
        constructed_by_alc: { id: 8, name: '軽量気泡コンクリート(ALC)' },
        constructed_by_pc: { id: 9, name: 'プレキャストコンクリート(PC)' },
        constructed_by_hpc: { id: 10, name: '鉄骨プレキャストコンクリート(HPC)' },
        constructed_by_other: { id: 11, name: 'その他' }
      },
      seismic_diagnosis_state: {
        seismic_diagnosis_executed: { id: 1, name: '実施' },
        seismic_diagnosis_not_executed: { id: 2, name: '未実施' },
        seismic_diagnosis_unknown: { id: 3, name: '不明' }
      },
      building_inspection_state: {
        building_inspection_executed: { id: 1, name: '実施' },
        building_inspection_not_executed: { id: 2, name: '未実施' },
        building_inspection_unknown: { id: 3, name: '不明' },
      },
      daylightful_direction: {
        daylightful_at_north: { id: 1, name: '北' },
        daylightful_at_south: { id: 2, name: '南' },
        daylightful_at_east: { id: 3, name: '東' },
        daylightful_at_west: { id: 4, name: '西' },
        daylightful_at_northeast: { id: 5, name: '北東' },
        daylightful_at_northwest: { id: 6, name: '北西' },
        daylightful_at_southeast: { id: 7, name: '南東' },
        daylightful_at_southwest: { id: 8, name: '南西' }
      },
      parking_type: {
        parking_self: { id: 1, name: '駐車場' },
        parking_garage: { id: 2, name: '車庫' },
        parking_neighborhood: { id: 3, name: '近隣駐車場' }
      },
      parking_fee_payment_cycle: {
        parking_fee_payed_monthly: { id: 1, name: '月額' },
        parking_fee_payed_yearly: { id: 2, name: '年額' },
        parking_fee_payed_dayly: { id: 3, name: '日額' }
      },
      cooking_stove_type: {
        cooking_stove_gas: { id: 1, name: 'ガス' },
        cooking_stove_electric: { id: 2, name: '電気' },
        cooking_stove_ih: { id: 3, name: 'IH' }
      },
      cooking_stove_burner_count: {
        cooking_stove_burner_1_port: { id: 1, name: '一口' },
        cooking_stove_burner_2_port: { id: 2, name: '二口' },
        cooking_stove_burner_3_port: { id: 3, name: '三口' },
        cooking_stove_burner_more: { id: 4, name: '四口以上' }
      },
      room_layout_type: {
        dk:   { id: 1, name: 'DK' },
        ldk:  { id: 2, name: 'LDK' },
        sldk: { id: 3, name: 'SLDK' },
        r:    { id: 4, name: 'R' },
        k:    { id: 5, name: 'K' },
        sk:   { id: 6, name: 'SK' },
        sdk:  { id: 7, name: 'SDK' },
        lk:   { id: 8, name: 'LK' },
        slk:  { id: 9, name: 'SLK' }
      },
      urban_project: {
        urban_promoted:         { id: 1, name: '市街化区域' },
        urban_controlled:       { id: 2, name: '市街化調整区域' },
        urban_neutral:          { id: 3, name: '非線引区域' },
        urban_out_of_projected: { id: 4, name: '都市計画区域外' },
        urban_sub_projected:    { id: 5, name: '準都市計画区域' }
      },
      zoning_type: {
        zone_first_low_rise: { id: 1, name: '一種低層' },
        zone_second_low_rise: { id: 2, name: '二種低層' },
        zone_first_mid_high_rise: { id: 3, name: '一種中高層' },
        zone_second_mid_high_rise: { id: 4, name: '二種中高層' },
        zone_first_resident: { id: 5, name: '一種住居' },
        zone_second_resident: { id: 6, name: '二種住居' },
        zone_sub_resident: { id: 7, name: '準住居' },
        zone_neighborhood_commercial: { id: 8, name: '近隣商業' },
        zone_commercial: { id: 9, name: '商業' },
        zone_sub_industrial: { id: 10, name: '準工業' },
        zone_industrial: { id: 11, name: '工業' },
        zone_industrial_exclusive: { id: 12, name: '工業専用' },
        zone_none: { id: 13, name: '指定なし' }
      },
      right_of_land: {
        right_of_ownership: { id: 1, name: '所有権' },
        right_of_surface: { id: 2, name: '地上権' },
        right_of_lease: { id: 3, name: '賃借権' },
        right_of_lease_common: { id: 4, name: '普通賃借権' },
        right_of_lease_restricted: { id: 5, name: '定期賃借権' },
        right_of_surface_common: { id: 6, name: '普通地上権' },
        right_of_surface_restricted: { id: 7, name: '定期地上権' }
      },
      nation_land_act_state: {
        nl_act_required: { id: 1, name: '要' },
        nl_act_filing: { id: 2, name: '届け出中' },
        nl_act_not_required: { id: 3, name: '不要' },
        nl_act_none: { id: 4, name: '指定なし' },
        nl_act_checked: { id: 5, name: '確認済み' },
      },
    },

    # ---------------------------
    # Room
    # ---------------------------
    room: {
      genre: {
        western: { id: 1, name: '洋室' },
        japanese: { id: 2, name: '和室' },
        living: { id: 3, name: 'リビング' },
        dining_kitchen: { id: 4, name: 'ダイニングキッチン' },
        living_dining_kitchen: { id: 5, name: 'リビングダイニングキッチン' }
      }
    },

    # ---------------------------
    # AvailableFacility
    # ---------------------------
    available_facility: {
      genre: {
        elementary_school: { id: 1, name: '最寄り小学校' },
        middle_school: { id: 2, name: '最寄り中学校' },
        convenience_store: { id: 3, name: '最寄りコンビニ' },
        grocery_store: { id: 4, name: '最寄りスーパー' },
        hospital: { id: 5, name: '最寄り総合病院' }
      }
    },

    # ---------------------------
    # Content
    # ---------------------------
    content: {
      use_for: {
        layout: { id: 1, name: '間取り図・図面' },
        exterior: { id: 2, name: '外観' },
        living: { id: 3, name: '居間' },
        interior: { id: 4, name: '室内・内装' },
        shared: { id: 5, name: '共用部' },
        surrounding: { id: 6, name: '周辺環境' },
        other_usage: { id: 7, name: 'その他' }
      }
    },

    # ---------------------------
    # Event
    # ---------------------------
    event: {
      public_state: {
        public_waiting: { id: 1, name: 'オープン前' },
        public_running: { id: 2, name: 'オープン中' },
        public_closed: { id: 3, name: 'クローズ' }
      }
    },

    # ---------------------------
    # MiscFee
    # ---------------------------
    misc_fee: {
      genre: {
        resident_membership: { id: 1, name: '町会費' },
        self_government:     { id: 2, name: '自治会費' },
        administration:      { id: 3, name: '共益／管理費' },
        cable_broadcast:     { id: 4, name: '有線放送利用費' },
        internet:            { id: 5, name: 'インターネット利用費' },
        catv:                { id: 6, name: 'CATV利用費' },
        spa_use:             { id: 7, name: '温泉使用料' },
        spa_provider:        { id: 8, name: '温泉権利金' },
        other_fee:           { id: 9, name: 'その他' }
      },
      payment_cycle: {
        payed_at_first: { id: 1, name: '物件取得時' },
        payed_monthly: { id: 2, name: '月額' },
        payed_yearly: { id: 3, name: '年額' },
        payed_every_2y: { id: 4, name: '２年毎' },
        payed_every_3y: { id: 5, name: '３年毎' }
      },
    },

    # ---------------------------
    # AvailableRoad
    # ---------------------------
    available_road: {
      direction: {
        at_north: { id: 1, name: '北' },
        at_south: { id: 2, name: '南' },
        at_east: { id: 3, name: '東' },
        at_west: { id: 4, name: '西' },
        at_northeast: { id: 5, name: '北東' },
        at_northwest: { id: 6, name: '北西' },
        at_southeast: { id: 7, name: '南東' },
        at_southwest: { id: 8, name: '南西' }
      },
      genre: {
        public_road: { id: 1, name: '公道' },
        private_road: { id: 2, name: '私道' }
      }
    }
  }.freeze
end