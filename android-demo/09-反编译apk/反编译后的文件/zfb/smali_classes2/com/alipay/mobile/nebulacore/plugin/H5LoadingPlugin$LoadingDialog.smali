.class Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;
.super Landroid/app/Dialog;
.source "H5LoadingPlugin.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/alipay/mobile/nebulacore/R$style;->h5_loading_style:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;Landroid/content/Context;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->a:Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    .line 71
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 72
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 77
    sget v1, Lcom/alipay/mobile/nebulacore/R$layout;->h5_loading:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->h5_loading_progress:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->b:Landroid/widget/ProgressBar;

    .line 79
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->h5_loading_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->c:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 82
    const v2, 0x3f7d70a4    # 0.99f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->setContentView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->setCancelable(Z)V

    .line 87
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->a()V

    .line 91
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->d:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$LoadingDialog;->a()V

    .line 99
    :cond_0
    return-void
.end method
