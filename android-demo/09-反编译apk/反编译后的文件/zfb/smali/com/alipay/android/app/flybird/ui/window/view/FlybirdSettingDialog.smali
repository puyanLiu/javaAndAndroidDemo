.class public Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/EditText;

.field private f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

.field private g:Lcom/alipay/android/app/json/JSONObject;

.field private h:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

.field private i:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string/jumbo v0, "SettingDialog"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->h(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->b:Z

    .line 37
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->c:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    .line 38
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->d:Landroid/view/View;

    .line 39
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    .line 40
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    .line 41
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->g:Lcom/alipay/android/app/json/JSONObject;

    .line 151
    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/view/q;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/view/q;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->i:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;

    .line 47
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "flybird_dark_transparent"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 48
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->a:Landroid/app/Activity;

    .line 49
    iput-boolean p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->b:Z

    .line 50
    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->g:Lcom/alipay/android/app/json/JSONObject;

    .line 51
    iput-object p4, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->c:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    .line 52
    iput-object p5, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->h:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->h:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/view/r;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/view/r;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)V

    invoke-static {v0}, Lcom/alipay/android/app/util/GlobalExcutorUtil;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->g:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->b:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->c:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 57
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->a:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_setting_dialog_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->d:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->d:Landroid/view/View;

    const-string/jumbo v0, "input_et_password"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    const-string/jumbo v0, "spwd_input"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->setmDecoView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->i:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->setmSubmitInterface(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/view/l;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/l;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/view/m;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/m;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->setVisibility(I)V

    const-string/jumbo v0, "button_item"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const-string/jumbo v0, "button_cancel"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/view/n;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/flybird/ui/window/view/n;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "dialog_close"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/view/o;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/flybird/ui/window/view/o;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "button_ok"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/p;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/view/p;-><init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->f:Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->h:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->c_()V

    .line 132
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog;->dismiss()V

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
