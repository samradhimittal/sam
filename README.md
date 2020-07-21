"# sam" 
<p>Yet another security fix release: With a crafted URL that contains a newline or empty host, or lacks a scheme, the credential helper machinery can be fooled into providing credential information that is not appropriate for the protocol in use and host being contacted (CVE-2020-11008).</p>
