.class Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$2;
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
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$2;->a:Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment$2;->a:Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BusCardFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nfc/ui/frgment/LastTenRecordFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a(Ljava/lang/Class;Z)V

    .line 87
    return-void
.end method
