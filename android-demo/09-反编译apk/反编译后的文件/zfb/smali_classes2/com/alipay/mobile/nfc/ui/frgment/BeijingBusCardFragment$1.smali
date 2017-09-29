.class Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$1;
.super Ljava/lang/Object;
.source "BeijingBusCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BeijingBusCardFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->a()V

    .line 87
    return-void
.end method
