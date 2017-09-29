.class public Lcom/alipay/android/phone/secauthenticator/kcart/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final H5ActivityClassName:Ljava/lang/String; = "com.alipay.mobile.h5container.ui.H5Activity"

.field public static final H5PageFinished:Ljava/lang/String; = "com.alipay.mobile.h5container.pageFinished"

.field public static final appIDModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;",
            ">;"
        }
    .end annotation
.end field

.field public static final decayVariableConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final decayVariableModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final h5ModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;",
            ">;"
        }
    .end annotation
.end field

.field public static final nativeModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;",
            ">;"
        }
    .end annotation
.end field

.field public static final tabModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.wealth.bankcardmanager.ui.BankCardListActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CARD_LIST:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.transferapp.ui.TransferHomeActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_TRANSFER_HOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.mobilerechargeapp.activity.MobileRechargeActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PHONE_RECHARGE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.transferapp.ui.TFToAccountInputActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_TRANSFER_TO_ACCOUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.bill.list.ui.BillListActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MY_BILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.widget.security.ui.AccountSecurityActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_SECURITYSAFE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.discovery.o2o.detail.activity.MerchantDetailsActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.security.accountmanager.AccountInfo.ui.ShareSavePicThireBtnActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_INFO:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.socialsdk.contact.ui.SignaturePageActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_INFO:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.widget.security.ui.NickNameSettingActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_INFO:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.android.avatar.process.AvatarSettingActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_INFO:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.security.accountmanager.AccountInfo.ui.AccountInfoActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_ACCTDTL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.security.accountmanager.ui.AccountManagerActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_ACCTMGR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.transferapp.ui.TransferToCardFormActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FZFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.chatapp.ui.PrivacyActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PRIVATE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.widget.security.ui.SecurityProtectActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CENTER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.chatapp.ui.GroupChatInfoUIActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MEMBER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.home.user.UserSettingActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_SETTING:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.fund.ui.FundMainNewActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_YUEBAO:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.discovery.movieticket.ui.HomeActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.stock.ui.QuotationActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.cityservice.ui.activity.EntryActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.widget.security.ui.authentication.AuthenticationCertifiedActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CERT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.chatapp.ui.PersonalChatMsgActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_TALK:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.chatapp.ui.GroupChatMsgActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_TALK:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.discovery.o2o.search.activity.SearchActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHTRESEARCH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.familyaccount.ui.FamilyAccountMainActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_RELATION:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.widgets.asset.AssetAnalyzeActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_ASSET:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.loan.remake.LoanMainActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_LOAN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.wealth.bankcardmanager.ui.AddBankCardStepOneActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CARDFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.pubsvc.ui.PPListActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_SERVICE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.businesscommon.globalsearch.ui.CommonSearchActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_RESEARCH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.wealth.tally.activitys.TallyMainActivity_"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_ASSETMGR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.discovery.envelope.mine.AllCouponList"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_HB:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.mobile.logistics.ui.main.ExpressMainScreenActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_DELIVER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.wealth.InsuranceActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PLAN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->nativeModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alifi.themis.ui.credit.CreditIndexActivity"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_SESAME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u6e38\u620f\u5145\u503c"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_GAME_RECHARGE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u53e3\u7891\u5916\u5356"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u9644\u8fd1"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u7231\u5fc3\u6350\u8d60"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u624b\u673a\u6dd8\u5b9d"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u6dd8\u5b9d\u4f17\u7b79"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u62db\u8d22\u5b9d"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u5a31\u4e50\u5b9d"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u670d\u52a1\u5927\u5385"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_QUESTION:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u6211\u7684\u5ba2\u670d"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CUSTOMER_SERVICE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u751f\u6d3b\u7f34\u8d39"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PP:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u6211\u7684\u7279\u6743"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_RIGHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u4fe1\u606f\u8865\u5168"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_INFOFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->h5ModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "\u8682\u8681\u82b1\u5457"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->tabModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000002"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_HOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->tabModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000238"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MERCHANT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->tabModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000217"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FRIEND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->tabModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000004"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FUND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000153"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_GAME_RECHARGE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000120"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000689"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "10000009"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000165"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000142"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000691"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CUSTOMER_SERVICE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000193"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PP:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000160"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_RIGHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->appIDModuleMap:Ljava/util/Map;

    const-string/jumbo v1, "20000199"

    sget-object v2, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_SECURITYSAFE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v11, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_SECURITYSAFE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_SECURITYSAFE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_SECURITYSAFE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_GAME_RECHARGE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_GAMERECHARGE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_GAMERECHARGE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_TRANSFER_HOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_ST_TRANSFERHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_TRANSFERHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_YUEBAO:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v12, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_YEBHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_YEBHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_ST_YEBHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_ST_YEBHOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PHONE_RECHARGE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_MX_PHONE_RECHARGE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_MAX:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_SERVICE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_MX_SERVICE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_MAX:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_ST_SERVICE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CARD_LIST:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v11, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_FUNDCARD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_FUNDCARD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_FUNDCARD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_TRANSFER_TO_ACCOUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_FP:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MY_BILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_ST_MYBILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_ST_MYBILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FUND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v11, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_FUND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_FUND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_FUND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_TALK:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_TALK:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_TALK:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v12, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_ST_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_ST_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CERT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_MX_CERT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_MAX:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_INFO:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_INFO:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_INFO:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_RELATION:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_RELATION:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_RELATION:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_ASSET:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_ASSET:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_ASSET:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_HOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_HOME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_ACCTDTL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_ACCTDTL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_ACCTDTL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_ACCTMGR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_ACCTMGR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_ACCTMGR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_PAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_PAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_LOAN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_LOAN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_LOAN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FZFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_MX_FZFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_MAX:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CARDFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v11, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_ST_CARDFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_ST_CARDFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_MX_CARDFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_MAX:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_QUESTION:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_QUES:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_QUES:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CUSTOMER_SERVICE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_CUSTOMER_SERVICE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MEMBER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_MEMBER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_MEMBER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_RESEARCH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1H_CNT_RESEARCH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_HOUR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_ASSETMGR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_ASSETMGR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_ASSETMGR:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_HB:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_HB:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_HB:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_DELIVER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_DELIVER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_DELIVER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PLAN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_PLAN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PRIVATE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_PRIVATE:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_CENTER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_CENTER:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_PP:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_PP:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_SESAME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_SESAME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHTRESEARCH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_MRCHTRESEARCH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_RIGHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_RIGHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_INFOFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_INFOFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_INFOFILL:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MERCHANT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_MERCHARNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_ST_MERCHARNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_STAYTIME:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FRIEND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v9, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_FRIEND:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_SETTING:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    new-array v2, v10, [Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D1D_CNT_SETTING:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_DAY:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->DV_D30D_CNT_SETTING:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    new-instance v4, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;

    sget-object v5, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;->TYPE_DECAY_COUNT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;

    sget-object v6, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;->DURATION_1_MONTH:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;

    sget-object v7, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;->OPERATION_TYPE_ADD:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableConfig;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$VariableType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DurationType;Lcom/alipay/android/phone/secauthenticator/kcart/Constants$OperationType;)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableConfigMap:Ljava/util/Map;

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableModuleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    sget-object v3, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->decayVariableConfigMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
