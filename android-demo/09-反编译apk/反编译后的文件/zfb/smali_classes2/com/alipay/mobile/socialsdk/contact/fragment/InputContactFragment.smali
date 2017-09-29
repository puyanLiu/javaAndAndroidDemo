.class public Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;
.source "InputContactFragment.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "fragment_input_contact"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_bar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "accountInputBox"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "next"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

.field private e:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field private f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->e:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public static showSoftInput(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 192
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 193
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 195
    return-void
.end method


# virtual methods
.method protected afterViews()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->e:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->f:Landroid/os/Bundle;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const-string/jumbo v1, "\u8f93\u5165\u8d26\u6237"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/ax;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ax;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->e:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->account_text:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setInputName(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->e:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->showSoftInput(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/ay;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ay;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/az;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/az;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$drawable;->scan_input:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLastImgBg(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLastImgButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->e:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->d:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    const-string/jumbo v1, "TAG_MULTI_SELCET"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 186
    return v3
.end method

.method public setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->d:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    .line 151
    return-void
.end method

.method protected startToQuery()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 156
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/bc;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bc;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->startQuery(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V

    .line 174
    return-void
.end method

.method protected toConfirmPage()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->d:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    const-string/jumbo v1, "TAG_CONFIRM_ACCOUNT"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->f:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 179
    return-void
.end method
