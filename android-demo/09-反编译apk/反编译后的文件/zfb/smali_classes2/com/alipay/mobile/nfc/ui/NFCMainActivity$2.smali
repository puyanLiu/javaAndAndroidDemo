.class Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;
.super Ljava/lang/Object;
.source "NFCMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCMainActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->finish()V

    .line 217
    return-void
.end method
