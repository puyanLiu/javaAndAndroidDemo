.class public Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;
.super Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;
.source "SetRemarkNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "layout_set_remark_name"
.end annotation


# static fields
.field public static final KEY_ALIACCOUNT:Ljava/lang/String; = "key_aliaccount"

.field public static final MAX_LEN:I = 0x20

.field public static REQ_CODE:I


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_bar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APEditText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "set_remarkname"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "cancel"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "rl_use_contact_name"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_contact_name_hint"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "bt_set"
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field private k:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->REQ_CODE:I

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 279
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "SocialSdk_Sdk"

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "TextUtils.isEmpty(mRemarkName) = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 281
    goto :goto_0

    .line 283
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SocialSdk_Sdk"

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "!mContactAccount.remarkName.equals(mRemarkName) = "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 284
    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->m:Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v1, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    :try_start_0
    const-string/jumbo v2, "key_aliaccount"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 83
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->l:Ljava/lang/String;

    .line 85
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->j:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 86
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 88
    const-class v2, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->k:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    :try_start_1
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bk;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bk;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bl;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bl;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 118
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bm;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bm;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 129
    :goto_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->remark_info:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->complete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/bn;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bn;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->blue_button_selector:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/TitlebarGenericButtonUtil;->setGenericButtonBg(Lcom/alipay/mobile/commonui/widget/APTitleBar;I)V

    .line 139
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->checkContact()V

    goto/16 :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto/16 :goto_2

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_4

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getSelectionEnd()I

    move-result v0

    .line 233
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/api/util/StringUtil;->getWordCount(Ljava/lang/String;)I

    move-result v1

    .line 234
    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 235
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    .line 239
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 246
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 251
    :goto_1
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method protected checkContact()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 157
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->queryByUserId(Ljava/lang/String;)Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    iget-object v0, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->i:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->onCheckContact(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->onCheckContact(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const-string/jumbo v1, "\u4fdd\u5b58\u672c\u6b21\u7f16\u8f91\uff1f"

    const/4 v2, 0x0

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->save:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/bo;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bo;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V

    const-string/jumbo v5, "\u4e0d\u4fdd\u5b58"

    new-instance v6, Lcom/alipay/mobile/socialsdk/contact/ui/bp;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/bp;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->finish()V

    goto :goto_0
.end method

.method protected onCheckContact(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "contact_state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->d:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->set_contact_name_to:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method protected setRemarName()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 181
    :try_start_0
    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/req/SetRemarkNameReq;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/biz/shared/req/SetRemarkNameReq;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetRemarkNameReq;->alipayAccount:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetRemarkNameReq;->targetUserId:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetRemarkNameReq;->remarkName:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->k:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-interface {v1, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->setRemarkName(Lcom/alipay/mobilerelation/biz/shared/req/SetRemarkNameReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 187
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 188
    const-string/jumbo v2, "SingleQueryResult:getProfile:\u63a5\u6536\u6b63\u5e38\u54cd\u5e94"

    .line 187
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->j:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->createOrUpdateAccountInfo(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 191
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->m:Z

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "contact_state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->g:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->finish()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->dismissProgressDialog()V

    .line 208
    return-void

    .line 197
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->toast(Ljava/lang/String;I)V

    .line 198
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 199
    const-string/jumbo v2, "SingleQueryResult:getProfile:\u8bf7\u6c42\u5931\u8d25"

    .line 198
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity;->dismissProgressDialog()V

    .line 206
    throw v0

    .line 197
    :cond_2
    :try_start_3
    const-string/jumbo v0, "\u64cd\u4f5c\u5931\u8d25"
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
