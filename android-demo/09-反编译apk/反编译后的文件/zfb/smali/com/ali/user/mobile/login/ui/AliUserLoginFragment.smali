.class public abstract Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
.super Lcom/ali/user/mobile/login/ui/BaseLoginFragment;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected final HISTORY_MODE_LOAD:I

.field protected final HISTORY_MODE_SHOW:I

.field private final a:Ljava/lang/String;

.field protected clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

.field protected isDropdownAccount:Z

.field protected isExternalLoginParam:Z

.field protected mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

.field protected mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

.field protected mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mArrowDownView:Landroid/widget/ImageButton;

.field protected mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

.field protected mCurrentSelectedAccount:Ljava/lang/String;

.field protected mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

.field protected mForgetPassword:Landroid/widget/TextView;

.field protected mForgetPasswordCenter:Landroid/widget/TextView;

.field protected mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field protected mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

.field protected mHistoryManager:Lcom/ali/user/mobile/login/LoginHistoryManager;

.field protected mIsSecurityCore:Z

.field protected mLoginButton:Landroid/widget/Button;

.field protected mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            ">;"
        }
    .end annotation
.end field

.field mLoginHistoryItemClickListener:Landroid/view/View$OnClickListener;

.field protected mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

.field protected mLoginHistorys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/login/LoginHistory;",
            ">;"
        }
    .end annotation
.end field

.field protected mPasswordChangeView:Landroid/widget/ImageButton;

.field protected mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

.field protected mPasswordInputType:Ljava/lang/String;

.field protected mPortraitLoadCallback:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

.field protected mSecurityId:Ljava/lang/String;

.field protected mSmsH5url:Ljava/lang/String;

.field protected mSmsLoginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSwitchLoginAndForgetPassword:Landroid/view/View;

.field protected mSwitchUserLogin:Landroid/widget/TextView;

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field protected mViewContainers:Landroid/view/View;

.field protected subviewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;-><init>()V

    .line 81
    const-string/jumbo v0, "AliUserLoginFragment"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->HISTORY_MODE_SHOW:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->HISTORY_MODE_LOAD:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPortraitLoadCallback:Lcom/ali/user/mobile/ui/widget/ImageLoadCallback;

    .line 97
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsLoginMap:Ljava/util/Map;

    .line 101
    const-string/jumbo v0, "n"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputType:Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isExternalLoginParam:Z

    .line 529
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$1;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryItemClickListener:Landroid/view/View$OnClickListener;

    .line 1322
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$2;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$2;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1340
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1341
    const/16 v1, 0x9

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_register:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1342
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1343
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1344
    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1345
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1346
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    iget-object v4, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iput-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    :cond_3
    iput-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v4, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v4, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    :cond_4
    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-virtual {p0, v5, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    iput-boolean v5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->callPhoneNum(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected afterBindAlipayViaRpc(Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 903
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$21;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/AccountBindRes;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 921
    return-void
.end method

.method protected afterViews()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->preInit()V

    .line 173
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doInit()V

    .line 174
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->postInit()V

    .line 175
    return-void
.end method

.method protected bindAlipayViaH5(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 5

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 925
    const-string/jumbo v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const-string/jumbo v1, "&imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const-string/jumbo v1, "&utdid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    const-string/jumbo v1, "&apdid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getApdidAsync()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string/jumbo v1, "&appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const-string/jumbo v1, "&appId=ALIPAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 947
    invoke-virtual {v1}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "token"

    iget-object v4, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    invoke-static {v0, v1}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 950
    const-string/jumbo v0, "YWUC-JTTYZH-C49"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "taobaoBindingAlipayView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method protected bindAlipayViaRpc(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 2

    .prologue
    .line 885
    const-string/jumbo v0, "bindToken"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;

    invoke-direct {v1, p0, v0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$20;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 899
    return-void
.end method

.method protected checkAccountInputConfig()V
    .locals 2

    .prologue
    .line 1249
    const/4 v0, 0x1

    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleFlag()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "CFG_ALIUSER_ACCOUNT_INPUT_TIP"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1255
    :cond_0
    return-void
.end method

.method protected checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->enableBackButton()V

    .line 855
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkTaobaoLoginEntryConfig(I)V

    .line 856
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkSupportSmsLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 857
    return-void
.end method

.method protected checkSupportSmsLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3

    .prologue
    .line 1273
    const-string/jumbo v0, "isAllowSMS"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsLoginMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    return-void
.end method

.method protected checkTaobaoLoginEntryConfig(I)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1262
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "CFG_ALIUSER_TAOBAO_LOGIN_ENABLE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1263
    const-string/jumbo v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1265
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1270
    :goto_0
    return-void

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected clearPassword()V
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$32;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1309
    return-void
.end method

.method protected deleteAccount(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 3

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v0

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/login/LoginHistoryManager;->deleteLoginHistory(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 549
    if-lez v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistoryManager()Lcom/ali/user/mobile/login/LoginHistoryManager;

    move-result-object v0

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/LoginHistoryManager;->getHistoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    .line 551
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->notifyLoginHistoryChanged(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 553
    :cond_0
    return-void
.end method

.method protected disableBackButton()V
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$31;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$31;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1300
    return-void
.end method

.method protected doFetchH5Url(Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V
    .locals 1

    .prologue
    .line 1211
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->showProgress(Ljava/lang/String;)V

    .line 1212
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$30;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1226
    return-void
.end method

.method protected doInit()V
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_3

    .line 193
    const-string/jumbo v1, "from_register"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isFromRegist:Z

    .line 194
    const-string/jumbo v1, "source_accountSelectAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 195
    const-string/jumbo v2, "login_param"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    .line 197
    if-nez v0, :cond_1

    .line 198
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v2, "extLoginParam == null"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-eqz v1, :cond_0

    .line 200
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "from account manage\uff0cadd account"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "load login history"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setLoginHistoryAccount(Lcom/ali/user/mobile/login/LoginHistory;)V

    goto :goto_0

    .line 206
    :cond_1
    const-string/jumbo v1, "AliUserLoginFragment"

    const-string/jumbo v2, "has extLoginParam"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isFromRegist:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 210
    :cond_3
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "getArguments() = null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setLoginHistoryAccount(Lcom/ali/user/mobile/login/LoginHistory;)V

    goto :goto_0
.end method

.method protected enableBackButton()V
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getBackButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 1291
    return-void
.end method

.method protected formatInputBox(Landroid/widget/EditText;)V
    .locals 5

    .prologue
    .line 1330
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1331
    const/16 v1, 0x9

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_register:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1332
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1333
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1334
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1335
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1336
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1337
    return-void
.end method

.method protected abstract getLayout()I
.end method

.method protected getLoginAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 525
    :cond_0
    :goto_0
    return-object v0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    const-string/jumbo v1, "\uff0d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const-string/jumbo v1, "\uff0d"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 3

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getRdsData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->alipayEnvJson:Ljava/lang/String;

    .line 490
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string/jumbo v0, "withsndpwd"

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    .line 496
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    if-eqz v0, :cond_2

    .line 497
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "login after security core"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 499
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    .line 501
    :cond_1
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->externParams:Ljava/util/Map;

    const-string/jumbo v1, "securityId"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSecurityId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSecurityId:Ljava/lang/String;

    .line 506
    :cond_2
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    .line 507
    return-void
.end method

.method protected getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1313
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1314
    const-string/jumbo v1, "extResAttrs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1315
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1318
    :goto_0
    return-object v0

    .line 1317
    :catch_0
    move-exception v0

    const-string/jumbo v0, "AliUserLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "extResAttrs does not contains "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected hasLoginHistory()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hideLoginHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 458
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 465
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :cond_1
    return-void
.end method

.method protected initAccount(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 385
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 386
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ali/user/mobile/utils/StringUtil;->hideAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 388
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    .line 393
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 394
    return-void
.end method

.method protected initEvents()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchUserLogin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$4;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    new-instance v2, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$5;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 307
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$6;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordChangeView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$7;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->subviewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$8;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$8;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    return-void
.end method

.method protected initLoginHistory()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginHistorys()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    .line 357
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->hasLoginHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 359
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    .line 365
    :goto_0
    new-instance v0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 366
    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryItemClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;Ljava/util/List;Ljava/lang/String;)V

    .line 365
    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    .line 367
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APListView;->setDividerHeight(I)V

    .line 369
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V
    .locals 3

    .prologue
    .line 238
    const-string/jumbo v0, "AliUserLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initLoginParam:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initAccount(Ljava/lang/String;Z)V

    .line 241
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "token is null, need password"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "has token\uff0clogin directly"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->login(Lcom/ali/user/mobile/login/LoginParam;Z)V

    goto :goto_0
.end method

.method protected initRdsInfo()V
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initRdsPage(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, "UsernameET"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initRdsTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, "UsernameET"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, "PwdET"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    const-string/jumbo v1, "GetPwdBtn"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    const-string/jumbo v1, "GetPwdBtn"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mViewContainers:Landroid/view/View;

    const-string/jumbo v1, "LoginViewContainers"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initRdsScreenTouch(Landroid/view/View;Ljava/lang/String;)V

    .line 1246
    return-void
.end method

.method protected initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    iput-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 252
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    .line 253
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    .line 254
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->a(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->formatInputBox(Landroid/widget/EditText;)V

    .line 257
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->formatInputBox(Landroid/widget/EditText;)V

    .line 259
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->defaultFontSizeSP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 260
    mul-int/lit8 v0, v0, 0x6

    .line 261
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 262
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    .line 265
    return-void
.end method

.method protected isSupportSmsLogin()Z
    .locals 3

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    const/4 v0, 0x0

    .line 1282
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "true"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsLoginMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public login(Lcom/ali/user/mobile/login/LoginParam;Z)V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/TaobaoSsoLoginBiz;->disableTaobaoSsoLogin(Landroid/content/Context;)V

    .line 861
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->disableBackButton()V

    .line 862
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->login(Lcom/ali/user/mobile/login/LoginParam;)V

    .line 863
    return-void
.end method

.method protected loginInCurrentEnv()V
    .locals 2

    .prologue
    .line 680
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "loginInCurrentEnv"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 682
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    .line 683
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->login(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 684
    return-void
.end method

.method protected loginWithToken(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 696
    const-string/jumbo v0, "withchecktoken"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method protected loginWithToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 687
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "loginWithToken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 689
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    .line 690
    iput-object p1, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    .line 691
    iput-object p2, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 692
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->login(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 693
    return-void
.end method

.method protected notifyLoginHistoryChanged(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 567
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x5001

    .line 595
    const-string/jumbo v2, "AliUserLoginFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onActivityResult, requestCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/16 v2, 0x3e8

    if-ne p2, v2, :cond_0

    .line 598
    const-string/jumbo v0, "login_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 599
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginPreFinish(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 674
    :goto_0
    return-void

    .line 601
    :cond_0
    const/16 v2, 0x7ce

    if-ne p2, v2, :cond_2

    .line 602
    const-string/jumbo v0, "login_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 603
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    .line 673
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 604
    :cond_2
    if-eqz p2, :cond_12

    .line 605
    const/16 v2, 0x2000

    if-ne p1, v2, :cond_5

    .line 609
    const/16 v0, 0x2006

    if-ne p2, v0, :cond_3

    .line 610
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnv()V

    goto :goto_1

    .line 611
    :cond_3
    const/16 v0, 0x2008

    if-ne p2, v0, :cond_4

    .line 612
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 613
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsH5url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toChangeBindPhone(Ljava/lang/String;)V

    goto :goto_1

    .line 615
    :cond_4
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto :goto_1

    .line 617
    :cond_5
    const/16 v2, 0x5000

    if-ne p1, v2, :cond_7

    .line 618
    if-ne p2, v5, :cond_6

    .line 619
    const-string/jumbo v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;)V

    goto :goto_1

    .line 622
    :cond_6
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto :goto_1

    .line 624
    :cond_7
    const/16 v2, 0x6003

    if-ne p1, v2, :cond_9

    .line 626
    if-ne p2, v5, :cond_8

    .line 627
    const-string/jumbo v1, "loginId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 629
    new-instance v2, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v2}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 630
    iput-object v1, v2, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 631
    invoke-virtual {p0, v2, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    goto :goto_1

    .line 634
    :cond_8
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "change bind phone fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 636
    :cond_9
    const/16 v2, 0x6000

    if-ne p1, v2, :cond_b

    .line 637
    if-ne p2, v5, :cond_a

    .line 639
    const-string/jumbo v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;)V

    goto :goto_1

    .line 642
    :cond_a
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto :goto_1

    .line 644
    :cond_b
    const/16 v2, 0x101

    if-ne p1, v2, :cond_f

    .line 645
    const/16 v2, 0x102

    if-eq p2, v2, :cond_c

    if-nez p2, :cond_f

    .line 646
    :cond_c
    if-eqz p3, :cond_d

    const-string/jumbo v0, "quit"

    const-string/jumbo v1, "action"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 647
    :cond_d
    if-nez p2, :cond_1

    .line 648
    :cond_e
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto/16 :goto_0

    .line 651
    :cond_f
    const/16 v2, 0x7000

    if-ne p1, v2, :cond_15

    .line 652
    if-eqz p3, :cond_10

    const-string/jumbo v2, "quit"

    const-string/jumbo v3, "action"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 653
    :cond_10
    if-nez p2, :cond_13

    .line 654
    :cond_11
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    .line 669
    :cond_12
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto/16 :goto_1

    .line 657
    :cond_13
    if-eqz p3, :cond_14

    :goto_2
    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    .line 658
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mIsSecurityCore:Z

    if-eqz v0, :cond_1

    .line 659
    const-string/jumbo v0, "securityId"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSecurityId:Ljava/lang/String;

    .line 660
    const-string/jumbo v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    move v0, v1

    .line 657
    goto :goto_2

    .line 664
    :cond_15
    const v0, 0xc000

    if-ne p1, v0, :cond_1

    .line 665
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    .line 666
    const-string/jumbo v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    const-string/jumbo v1, "withmsg"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onAttach(Landroid/app/Activity;)V

    .line 129
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 130
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    .line 131
    new-instance v0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    .line 132
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    if-ne v0, v1, :cond_0

    .line 425
    const-string/jumbo v0, "LoginBtn"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onRdsControlClick(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "onLoginClicked"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "YWUC-JTTYZH-C57"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "YWUC-JTTYZH-C09"

    const-string/jumbo v1, "login"

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/log/PerformanceLogAgent;->logStart()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->closeInputMethod(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginInCurrentEnv()V

    .line 443
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 139
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->switchLogin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchUserLogin:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->subviewContainers:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->subviewContainer:Landroid/widget/LinearLayout;

    .line 141
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAccountInput:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 142
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->historyList:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 143
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAccountImage:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 144
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userPasswordInput:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    .line 145
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->viewContainers:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mViewContainers:Landroid/view/View;

    .line 146
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    .line 147
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 148
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->forgetPasswordCenter:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    .line 149
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->switchLoginAndForgetPassword:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    .line 150
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->forgetPassword:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPassword:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    .line 153
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountCompleteTextView:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    .line 154
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    .line 155
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordChangeView:Landroid/widget/ImageButton;

    .line 157
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1230
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onDestroy()V

    .line 1231
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 1233
    return-void
.end method

.method protected onLoginHistorySelected(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 0

    .prologue
    .line 545
    return-void
.end method

.method protected onLoginResponseError(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 721
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->dismissProgress()V

    .line 722
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 724
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    .line 725
    const-string/jumbo v2, "6203"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toLoginSmsVerify(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 851
    :goto_0
    return-void

    .line 727
    :cond_0
    const-string/jumbo v2, "5007"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 728
    const-string/jumbo v2, "1019"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    :cond_1
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 730
    :cond_2
    const-string/jumbo v2, "5016"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 731
    const-string/jumbo v2, "5008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 733
    const-string/jumbo v2, "1024"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 734
    :cond_3
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 735
    :cond_4
    const-string/jumbo v2, "5137"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 736
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->confirm_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->find_login_password:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 737
    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$10;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    move-object v0, p0

    move-object v4, v1

    .line 736
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 744
    :cond_5
    const-string/jumbo v2, "208"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 745
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->dial:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 746
    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$11;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 751
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->confirm_cancel:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v1

    .line 745
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 752
    :cond_6
    const-string/jumbo v2, "5144"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 753
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->confirm_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->dial:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$12;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$12;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    move-object v0, p0

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 759
    :cond_7
    const-string/jumbo v2, "5134"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 760
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->iknow:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->want_to_register:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 761
    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$13;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$13;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    move-object v0, p0

    move-object v4, v1

    .line 760
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 768
    :cond_8
    const-string/jumbo v2, "6201"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 769
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 770
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$14;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$14;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 776
    :cond_9
    const-string/jumbo v2, "6271"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 777
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 778
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$15;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 784
    :cond_a
    const-string/jumbo v2, "6272"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 785
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 786
    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 787
    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const-string/jumbo v1, "showOptionalInfo"

    const-string/jumbo v2, "showOptionalInfo"

    invoke-virtual {p0, p1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    const-string/jumbo v1, "agreementURL"

    const-string/jumbo v2, "agreementURL"

    invoke-virtual {p0, p1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string/jumbo v1, "optionStatus"

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "optionStatus"

    invoke-virtual {p0, p1, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 791
    const v1, 0x9000

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 792
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    goto/16 :goto_0

    .line 793
    :cond_b
    const-string/jumbo v2, "6205"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 794
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 795
    const-class v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordActivity_;

    const/16 v1, 0x4000

    invoke-virtual {p0, v0, v1, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Ljava/lang/Class;ILcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_0

    .line 796
    :cond_c
    const-string/jumbo v2, "6273"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 797
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 798
    const-class v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetPayPasswordExActivity_;

    const v1, 0xa000

    invoke-virtual {p0, v0, v1, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Ljava/lang/Class;ILcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_0

    .line 799
    :cond_d
    const-string/jumbo v2, "6207"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 800
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toSecurityCore(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_0

    .line 801
    :cond_e
    const-string/jumbo v2, "6210"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 802
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->confirm_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->continue_register:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 803
    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$16;

    invoke-direct {v6, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$16;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    move-object v0, p0

    move-object v4, v1

    .line 802
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 813
    :cond_f
    const-string/jumbo v2, "6211"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 814
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->iknow:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->want_to_register:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 815
    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$17;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$17;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    move-object v0, p0

    move-object v4, v1

    .line 814
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 822
    :cond_10
    const-string/jumbo v2, "6202"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 823
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toBindPhone(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_0

    .line 824
    :cond_11
    const-string/jumbo v2, "6301"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 825
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toChangeBindPhoneWhenLogging(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_0

    .line 826
    :cond_12
    const-string/jumbo v2, "6302"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 827
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toVerifyIdentity(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_0

    .line 828
    :cond_13
    const-string/jumbo v2, "6232"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 829
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toBindAlipay(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto/16 :goto_0

    .line 830
    :cond_14
    const-string/jumbo v2, "5018"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 831
    const-string/jumbo v2, "5019"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 832
    const-string/jumbo v2, "5037"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 833
    const-string/jumbo v2, "5141"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 834
    const-string/jumbo v2, "6306"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 835
    const-string/jumbo v2, "1026"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 836
    const-string/jumbo v2, "5133"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 837
    const-string/jumbo v2, "6232"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 838
    const-string/jumbo v2, "6291"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 839
    const-string/jumbo v2, "6262"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 840
    const-string/jumbo v2, "6292"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 841
    const-string/jumbo v2, "6293"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 842
    const-string/jumbo v2, "6294"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 843
    const-string/jumbo v2, "6295"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 844
    const-string/jumbo v2, "6296"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 845
    const-string/jumbo v2, "5136"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 846
    const-string/jumbo v2, "6303"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 847
    :cond_15
    const-string/jumbo v3, ""

    iget-object v4, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v2, p0

    move-object v7, v1

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 849
    :cond_16
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected onLoginResponseSuccess(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 707
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "withsndpwd"

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    :cond_1
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "validateTpye"

    const-string/jumbo v2, "withpwd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :goto_0
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "lp"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "loginType"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "from_register"

    iget-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isFromRegist:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    return-void

    .line 712
    :cond_2
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "validateTpye"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v2, v2, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onNewLoginParam(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 702
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onResume()V

    .line 180
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "come_back"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "can come back, show titlebar"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$3;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$3;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "can not come back, hide titlebar"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1236
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/BaseLoginFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initEvents()V

    .line 165
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initViews()V

    .line 168
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->afterViews()V

    .line 169
    return-void
.end method

.method protected postInit()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method protected preInit()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initRdsInfo()V

    .line 185
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkAccountInputConfig()V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->checkTaobaoLoginEntryConfig(I)V

    .line 187
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginHistory()V

    .line 188
    return-void
.end method

.method protected setLoginHistoryAccount(Lcom/ali/user/mobile/login/LoginHistory;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 377
    if-eqz p1, :cond_0

    .line 378
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    .line 379
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    .line 380
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initAccount(Ljava/lang/String;Z)V

    .line 382
    :cond_0
    return-void
.end method

.method protected abstract setPortraitImage(ZLjava/lang/String;)V
.end method

.method protected showLoginHistory()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 446
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 447
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryList:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mForgetPasswordCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSwitchLoginAndForgetPassword:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 454
    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;ILcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1130
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1131
    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1132
    const-string/jumbo v1, "token"

    iget-object v2, p3, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    invoke-virtual {p0, v0, p2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1134
    return-void
.end method

.method public toBindAlipay(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 7

    .prologue
    .line 866
    const-string/jumbo v0, "upGlobal"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->bind_alipayaccount:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->agree:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$18;

    invoke-direct {v4, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$18;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 873
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->disagree:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$19;

    invoke-direct {v6, p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$19;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    move-object v0, p0

    .line 868
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->bindAlipayViaH5(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    goto :goto_0
.end method

.method public toBindPhone(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 4

    .prologue
    .line 954
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 978
    invoke-virtual {v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "token"

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    const-string/jumbo v2, "%3Faction%3DcontinueLogin"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/utils/StringUtil;->addCallbackToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 980
    return-void
.end method

.method public toChangeBindPhone(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 983
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 987
    :cond_0
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 1019
    const-string/jumbo v1, "%3Faction%3DcontinueLogin"

    invoke-static {p1, v1}, Lcom/ali/user/mobile/utils/StringUtil;->addCallbackToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    goto :goto_0
.end method

.method public toChangeBindPhoneWhenLogging(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 4

    .prologue
    .line 1023
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 1057
    invoke-virtual {v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "token"

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    const-string/jumbo v2, "%3Faction%3DcontinueLogin"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/utils/StringUtil;->addCallbackToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 1059
    return-void
.end method

.method public toForgetPassword()V
    .locals 2

    .prologue
    .line 1159
    const-string/jumbo v0, "foundpassword"

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$28;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$28;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doFetchH5Url(Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V

    .line 1183
    return-void
.end method

.method public toLoginSmsVerify(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 3

    .prologue
    .line 1138
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1139
    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1140
    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1141
    const-string/jumbo v1, "aliuser_h5url"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    iput-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mSmsH5url:Ljava/lang/String;

    .line 1143
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1144
    const-string/jumbo v2, "mobileNo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1145
    const-string/jumbo v2, "mobile_for_sms"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1156
    :goto_0
    return-void

    .line 1150
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "isAdded() = false when toLoginSmsVerify, can not startActivityForResult"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->server_error_wait_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    const-string/jumbo v1, "AliUserLoginFragment"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toSecurityCore(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 5

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    new-instance v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$27;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 1119
    const-string/jumbo v1, "securityId"

    invoke-virtual {p0, p1, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1120
    invoke-virtual {v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "securityId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    invoke-virtual {v0}, Lcom/ali/user/mobile/h5/AUH5Plugin;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "token"

    iget-object v4, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->h5Url:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "%3FsecurityId%3D"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ali/user/mobile/utils/StringUtil;->addSecurityCallbackToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    .line 1127
    :goto_0
    return-void

    .line 1124
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "isAdded() = false when toSecurityCore, can not startActivityForResult"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->server_error_wait_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public toSmsLogin()V
    .locals 2

    .prologue
    .line 1186
    const-string/jumbo v0, "msglogin"

    new-instance v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$29;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doFetchH5Url(Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V

    .line 1208
    return-void
.end method

.method public toVerifyIdentity(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 8

    .prologue
    .line 1062
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "call VerifyIdentity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v1, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->token:Ljava/lang/String;

    .line 1064
    const-string/jumbo v0, "tokenId"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getStringFromExtResAttrs(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1065
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->verify_identity_fail:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1066
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->system_error_try_later:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1068
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    .line 1069
    if-eqz v0, :cond_0

    .line 1070
    const-string/jumbo v5, "Aliuser.Login.VerifyIdentity"

    const/4 v6, 0x0

    new-instance v7, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;

    invoke-direct {v7, p0, v1, v3, v4}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$26;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;->startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V

    .line 1093
    :goto_0
    return-void

    .line 1090
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "verifyIdentityService=null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected updateLoginHistory()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 573
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "updateLoginHistory"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->hasLoginHistory()Z

    move-result v0

    .line 575
    if-eqz v0, :cond_2

    .line 576
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 582
    :goto_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    iget-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    :cond_0
    iput-boolean v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->isDropdownAccount:Z

    .line 585
    if-eqz v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setLoginHistoryAccount(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 591
    :cond_1
    :goto_1
    return-void

    .line 578
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mArrowDownView:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 579
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 580
    iput-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    goto :goto_0

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mAccountInputView:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
