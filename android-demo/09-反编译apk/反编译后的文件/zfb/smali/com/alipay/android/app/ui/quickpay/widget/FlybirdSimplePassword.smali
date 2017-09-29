.class public Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/EditText;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/view/View;

.field private g:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->e:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->e:I

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "flybird_ui_simple_password"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    const-string/jumbo v0, "mini_linSimplePwdComponent"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->a:Landroid/widget/LinearLayout;

    const-string/jumbo v0, "mini_spwd_iv_1"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "mini_spwd_iv_2"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_spwd_iv_3"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string/jumbo v3, "mini_spwd_iv_4"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string/jumbo v4, "mini_spwd_iv_5"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string/jumbo v5, "mini_spwd_iv_6"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    iget-object v6, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "mini_spwd_input"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/widget/g;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword$TextWatcherImpl;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/widget/h;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/widget/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/widget/i;-><init>(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->e:I

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 32
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$400(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->g:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->e:I

    return v0
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public getInputText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->e:I

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmDecoView()Landroid/view/View;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->f:Landroid/view/View;

    return-object v0
.end method

.method public setmDecoView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->f:Landroid/view/View;

    .line 233
    return-void
.end method

.method public setmSubmitInterface(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/FlybirdSimplePassword;->g:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdSettingDialog$AutoSubmitInterface;

    .line 215
    return-void
.end method
