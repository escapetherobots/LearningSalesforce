<aura:application extends="force:slds">
	<div class="slds-grid">
		<div class="slds-grid">

			<c:CruxContactsHeader />
		</div>
	</div>	
	<div class="slds-grid slds-m-top_xx-large">

	  <div class="slds-col">
	  	<c:CruxContactsSearchBar />
	  	<c:CruxContactsList />

	  	

	  </div>
	  	
	  <div class="slds-col"></div>
	</div>
	
</aura:application>