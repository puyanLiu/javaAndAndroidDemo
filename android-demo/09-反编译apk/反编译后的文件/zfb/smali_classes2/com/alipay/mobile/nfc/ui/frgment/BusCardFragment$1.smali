.class Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$1;
.super Ljava/lang/Object;
.source "BusCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a()V

    .line 64
    return-void
.end method
