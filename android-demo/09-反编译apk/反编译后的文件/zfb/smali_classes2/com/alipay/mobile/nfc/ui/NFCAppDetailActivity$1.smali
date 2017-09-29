.class Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$1;
.super Ljava/lang/Object;
.source "NFCAppDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "\u5b89\u88c5\u5e94\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    const-string/jumbo v1, "main_button_style"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$1;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->finish()V

    .line 297
    return-void
.end method
