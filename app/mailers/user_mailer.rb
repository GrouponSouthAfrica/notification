require 'digest/sha2'
class UserMailer < ApplicationMailer
	

	default "Message-ID"=>"#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@gmail.com"
   helper UsersHelper

	def email(user, arr)

   		@user = user
   		@bus_intel_arr = arr[0]
   		@ct_sales_arr = arr[1] 
   		@CEO_arr = arr[2] 
   		@city_planner_arr = arr[3] 
   		@cs_arr = arr[4] 
   		@durban_sales_arr = arr[5] 
   		@editorial_arr = arr[6] 
   		@finance_arr = arr[7]
   		@goods_administrator_arr = arr[8] 
   		@johannesburg_sales_arr = arr[9] 
   		@logistics_arr = arr[10] 
   		@pretoria_sales_arr = arr[11] 
   		@PRM_arr = arr[12]
   		@QA_arr = arr[13] 
   		@strategic_accounts_arr = arr[14] 
   		@telesales_arr = arr[15] 
   		@travel_arr = arr[16]
   		@product_designer_arr = arr[17]
         @cs_tl_arr = arr[18]
         @goods_sales_arr = arr[19]
         @logistics_manager_arr = arr[20]
   		
	  


    	@url_busintel_peer = "https://docs.google.com/forms/d/1lkKkM0QQkfq0P_MlTMZaxWth9enske0kwBbrHNLtAPc/viewform"
      @url_ct_sales_supervisor = "https://docs.google.com/forms/d/1RyCQJMIMhnCZvHmuqcfI-yQaUCTiUreHqXmy0q5Z66E/viewform"
      @url_ct_sales_peer = "https://docs.google.com/forms/d/1ZU3Qmyj_HoCi1wKbOI0kIklnLFU7ikjuCH5AevcxGaU/viewform"
      @url_ct_sales_manager_subordinate = "https://docs.google.com/forms/d/10_y8wuP4mTGIDvDCy3FRFC3FmF5Has_yXyWv8ruo0Po/viewform"
      @url_manager_supervisor = "https://docs.google.com/forms/d/1u1asG8Z_NVQ_AfVhlBFCsS9pwiR1B_Lx0pi6E1NLHhs/viewform"
      @url_city_planner_peer = "https://docs.google.com/forms/d/1bZJzJtty6mBtryjdwRITm2gASlzwbu3hnC--6_EtFtc/viewform"
      @url_city_planner_manager_subordinate = "https://docs.google.com/forms/d/1SsU2GYMp0uzM6eaMC4IjWkR_f9FEcdIusoFvNo_8kA8/viewform"
      @url_CS_peer = "https://docs.google.com/forms/d/1H1Fows2N0ejEYvA6vcajXcMCDXiefij3Wqjz2Y4NtKU/viewform"
      @url_CS_team_leader_subordinate = "https://docs.google.com/forms/d/18mrCagfSyYdBHbSqOkj1HJgiGZKjtaLUF9VHPW4pe4g/viewform"
      @url_CS_supervisor = "https://docs.google.com/forms/d/17mFe7Bio4o-lBIrTnZaGuZRLQ3crxL3dPY-0ZU-nChw/viewform"
      @url_CS_team_leader_peer = "https://docs.google.com/forms/d/13WFpuJ6sK_NJ7ZOBb-8go-cE1jGjex-wCswACDM2zXc/viewform"
      @url_CS_supervisor = "https://docs.google.com/forms/d/17mFe7Bio4o-lBIrTnZaGuZRLQ3crxL3dPY-0ZU-nChw/viewform"
      @url_durban_city_manager_subordinate = "https://docs.google.com/forms/d/1vClMBo4sIRjDb0qzemurTyZNRMrycYbuG9rBLD-DmAk/viewform"
      @url_durban_sales_peer = "https://docs.google.com/forms/d/1BYWTLShzhgdiG8R3UIZxexZ78DnnqN0esS-SnkaJ4dI/viewform"
      @url_durban_sales_supervisor = "https://docs.google.com/forms/d/1l1uPSxRFlNbwPTXZdeIyx6FEZ9mfgSXMowkun54D33Y/viewform"
      @url_editorial_manager_subordinate = "https://docs.google.com/forms/d/1obtXv0AlwfuhDlSfTnma6LavduXGx8kesWsm1ZLLCns/viewform"
      @url_editorial_supervisor = "https://docs.google.com/forms/d/1-pVGoRyilLp9Gv3Ppb62sBuEnpgnEHexBbLlbSfTTL8/viewform"
      @url_editorial_peer = "https://docs.google.com/forms/d/18SASiBO28xb-JEt6rpPWcT8wg8GMw3P8XWEHza6C8eY/viewform"
      @url_finance_peer = "https://docs.google.com/forms/d/1sI3xFGzD_a4sfbBjmyGJWK5hz8R71Qa35-yv9UVHhSk/viewform"
      @url_goods_admin_peer = "https://docs.google.com/forms/d/1lmeTYrmEVqPauFp1f1hV4n31XtFwGDR7MzUlo2CuyEY/viewform"
      @url_goods_manager_subordinate = "https://docs.google.com/forms/d/1FbHvgo4QgU7uq6sE5EdI4QeM2i1slfiW97JHstdO8C8/viewform"
      @url_goods_admin_supervisor = "https://docs.google.com/forms/d/1tlExhS2c__uaNXhz9ijq1NQf4riY51crEK3wHSNP4Jc/viewform"
      @url_goods_sales_supervisor = "https://docs.google.com/forms/d/1hJg1BRs7YwrdOQXWszb1t1VmPgk-J88iBDDl30DI9jc/viewform"
      @url_goods_sales_peer = "https://docs.google.com/forms/d/1RuA6PABp2neRG_CkCTSUZVka0sv7Ij2dmuYyr1mmBaw/viewform"
      @url_goods_manager_subordinate = "https://docs.google.com/forms/d/1FbHvgo4QgU7uq6sE5EdI4QeM2i1slfiW97JHstdO8C8/viewform"
      @url_johannesburg_sales_peer = "https://docs.google.com/forms/d/1FjziweK1qOKFc0N8ESyqG0P3ufnTrIMrenYK75tXVbQ/viewform"
      @url_logistics_peer = "https://docs.google.com/forms/d/1oTQ5ahBXLhvNBgCsrz3PCpckSlkKFT8aKwXQqa0f204/viewform"
      @url_logistics_manager_subordinate = "https://docs.google.com/forms/d/1VCcf0YbSDsPvrzzS2yrexxlZ6WWkcml96WCneHLRG2k/viewform"
      @url_logistics_supervisor = "https://docs.google.com/forms/d/1n9KWFGtF1QBjURvCX_tKV1pcfl7uB8yPMybQj8ZeZHY/viewform"
      @url_logistics_manager_peer = "https://docs.google.com/forms/d/1T-IINDwBXfqPEzZdn_Pq1EPNOa8sAd-Qa_ME4juHw3Q/viewform"
      @url_pretoria_sales_peer = "https://docs.google.com/forms/d/1YyM70gtD1IeeIvCxGqIEMyicei9zke5mpPtewBzD4Wc/viewform"
      @url_pretoria_sales_manager_subordinate = "https://docs.google.com/forms/d/1z6I9i523yWY5WWzN8Oaw-qFAMHL4dOhC8aeaKKKdnjQ/viewform"
      @url_pretoria_sales_supervisor = "https://docs.google.com/forms/d/1SIY7tsaPUIR-zYWT8BaI-QUudREddrEzCH1YTXE-c2k/viewform"
      @url_product_designer_peer = "https://docs.google.com/forms/d/1W14cJmQ_uXA1R7Ti3v3o8sPud2YogKFWEB5RTBPCn_o/viewform"
      @url_PRM_peer = "https://docs.google.com/forms/d/1l7Glav7VHzFc4ufE0hZIHUxw2n9vBzcrQGhhKhMpk7w/viewform"
      @url_PRM_manager_subordinate = "https://docs.google.com/forms/d/1gXuxu-xqHxSK_XWVr-87Tk81qj1obS0gRcHFmAG5B-k/viewform"
      @url_PRM_supervisor = "https://docs.google.com/forms/d/1xgsTQ9zxOi6Ds7YPGn-4PwV98KATeUpFf0AULuTO_KA/viewform"
      @url_QA_supervisor = "https://docs.google.com/forms/d/1UsShqS9dqTgkXWZBJnFNW-5xJqpb2Qnj8RgtrkX9GtE/viewform"
      @url_PRM_manager_peer = "https://docs.google.com/forms/d/1UWXk9Y1G1hxMhtwuLb09f7Fz5ZyeeKyejvk5lJ_5dxI/viewform"
      @url_QA_peer = "https://docs.google.com/forms/d/153eLIwIuu5ypCu_Jcj59Fy6eJxoQ4gFT5C_Ipy2ayZI/viewform"
      @url_PRM_manager_subordinate = "https://docs.google.com/forms/d/1gXuxu-xqHxSK_XWVr-87Tk81qj1obS0gRcHFmAG5B-k/viewform"
      @url_pretoria_sales_supervisor = "https://docs.google.com/forms/d/1SIY7tsaPUIR-zYWT8BaI-QUudREddrEzCH1YTXE-c2k/viewform"
      @url_pretoria_sales_manager_supervisor = "https://docs.google.com/forms/d/1z6I9i523yWY5WWzN8Oaw-qFAMHL4dOhC8aeaKKKdnjQ/viewform"
      @url_johannesburg_sales_supervisor = "https://docs.google.com/forms/d/1xM-IRqRRYGay1muO9PxVeV4DkPoGLt-sRQqZkPpF_Yc/viewform"
      @url_goods_sales_supervisor = "https://docs.google.com/forms/d/1hJg1BRs7YwrdOQXWszb1t1VmPgk-J88iBDDl30DI9jc/viewform"
      @url_goods_manager_subordinate = "https://docs.google.com/forms/d/1FbHvgo4QgU7uq6sE5EdI4QeM2i1slfiW97JHstdO8C8/viewform"
      @url_durban_sales_supervisor = "https://docs.google.com/forms/d/1l1uPSxRFlNbwPTXZdeIyx6FEZ9mfgSXMowkun54D33Y/viewform"
      @url_durban_city_manager_supervisor = "https://docs.google.com/forms/d/1vClMBo4sIRjDb0qzemurTyZNRMrycYbuG9rBLD-DmAk/viewform"
      @url_telesales_supervisor = "https://docs.google.com/forms/d/1Py_m-9hjdst4ZkZ8i6TbinncSNOKeaifn-D5TmyNOtQ/viewform" 
      @url_telesales_manager_subordinate = "https://docs.google.com/forms/d/180CPgsWTrEpGqGTbeJhy2kkz7VqkEzLHdf1PucUJVvQ/viewform"
      @url_strategic_accounts_peer = "https://docs.google.com/forms/d/1A6sXN6N107tGtFuRPnfL6knjNHrJKuIQQkpEBOLreZM/viewform"
      @url_telesales_peer = "https://docs.google.com/forms/d/1dEYMKoRCwQgVQ6E14nlk5Lj5gWB5ROUMlbkzyI_iKPE/viewform"
      @url_travel_peer = "https://docs.google.com/forms/d/1eNbcsLKSZGx57A3O-eM4LNTb_pnxwcmIFvXeFGov5Vc/viewform"

		mail(to: @user.email, 
				subject: 'Performance Appraisal', 
				template_path: 'user_mailer',
				template_name: 'welcome_email')


  	end

end
