SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [preODS].[Example_BlackBaudFE_Invoice]
AS

SELECT DISTINCT
	 MAX(CONVERT(NVARCHAR(50),[invoice-id])) [invoice-id_K]
	,MAX(CONVERT(NVARCHAR(MAX),[vendor-id])) [vendor-id]
	,MAX(CONVERT(NVARCHAR(MAX),[vendor-name])) [vendor-name]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-number])) [invoice-number]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-date])) [invoice-date]
	,MAX(CONVERT(NVARCHAR(MAX),[due-date])) [due-date]
	,MAX(CONVERT(NVARCHAR(MAX),[amount])) [amount]
	,MAX(CONVERT(NVARCHAR(MAX),[balance])) [balance]
	,MAX(CONVERT(NVARCHAR(MAX),[total-paid])) [total-paid]
	,MAX(CONVERT(NVARCHAR(MAX),[description])) [description]
	,MAX(CONVERT(NVARCHAR(MAX),[status])) [status]
	,MAX(CONVERT(NVARCHAR(MAX),[post-status])) [post-status]
	,MAX(CONVERT(NVARCHAR(MAX),[post-date])) [post-date]
	,MAX(CONVERT(NVARCHAR(MAX),[distribute-discounts])) [distribute-discounts]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_payment-method])) [invoice-payment-detail_payment-method]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_paid-from])) [invoice-payment-detail_paid-from]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_hold-payment])) [invoice-payment-detail_hold-payment]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_create-separate-payment])) [invoice-payment-detail_create-separate-payment]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_remit-to_address-id])) [invoice-payment-detail_remit-to_address-id]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_remit-to_description])) [invoice-payment-detail_remit-to_description]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_remit-to_country])) [invoice-payment-detail_remit-to_country]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_remit-to_city])) [invoice-payment-detail_remit-to_city]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_remit-to_county])) [invoice-payment-detail_remit-to_county]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_remit-to_state])) [invoice-payment-detail_remit-to_state]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_remit-to_postal])) [invoice-payment-detail_remit-to_postal]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_remit-to_address-line])) [invoice-payment-detail_remit-to_address-line]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_remit-to_contact-name])) [invoice-payment-detail_remit-to_contact-name]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_distribution-id])) [distributions_distribution-id]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_amount])) [distributions_amount]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_description])) [distributions_description]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_account-number])) [distributions_account-number]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_type-code])) [distributions_type-code]
	,MAX(CONVERT(NVARCHAR(MAX),[custom-fields_field-name])) [custom-fields_field-name]
	,MAX(CONVERT(NVARCHAR(MAX),[custom-fields_value])) [custom-fields_value]
	,MAX(CONVERT(NVARCHAR(MAX),[custom-fields_comments])) [custom-fields_comments]
	,MAX(CONVERT(NVARCHAR(MAX),[custom-fields_type])) [custom-fields_type]
	,MAX(CONVERT(NVARCHAR(MAX),[custom-fields_is-required])) [custom-fields_is-required]
	,MAX(CONVERT(NVARCHAR(MAX),[custom-fields_date])) [custom-fields_date]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_payments_payment-date])) [invoice-payment-detail_payments_payment-date]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_payments_transaction-number])) [invoice-payment-detail_payments_transaction-number]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_payments_payment-status])) [invoice-payment-detail_payments_payment-status]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_payments_amount])) [invoice-payment-detail_payments_amount]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_payments_br-transaction-id])) [invoice-payment-detail_payments_br-transaction-id]
	,MAX(CONVERT(NVARCHAR(MAX),[invoice-payment-detail_payments_checks-7-id])) [invoice-payment-detail_payments_checks-7-id]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_distribution-splits_distribution-split-id])) [distributions_distribution-splits_distribution-split-id]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_distribution-splits_ui-project-id])) [distributions_distribution-splits_ui-project-id]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_distribution-splits_amount])) [distributions_distribution-splits_amount]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_distribution-splits_percent])) [distributions_distribution-splits_percent]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_distribution-splits_account-class])) [distributions_distribution-splits_account-class]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_distribution-splits_transaction-code-values_])) [distributions_distribution-splits_transaction-code-values_]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_distribution-splits_transaction-code-values_name])) [distributions_distribution-splits_transaction-code-values_name]
	,MAX(CONVERT(NVARCHAR(MAX),[distributions_distribution-splits_transaction-code-values_value])) [distributions_distribution-splits_transaction-code-values_value]
FROM [src].[Example_BlackBaudFE_Invoice] WITH (NOLOCK)
GO