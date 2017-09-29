.class final Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;
.super Ljava/lang/Object;
.source "NetworkDiagnoseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->a:Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->b:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->c:I

    iput p4, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->d:I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->a:Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->b(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->a:Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->c(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    iget v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->c:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->a:Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;

    iget v0, p0, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/b;->d:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;->a(Lcom/alipay/mobile/commonbiz/ui/network/diagnose/NetworkDiagnoseFragment;Z)V

    .line 78
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
