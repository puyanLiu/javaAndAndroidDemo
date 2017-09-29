.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6$1;
.super Ljava/lang/Object;
.source "BankCardInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;)Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCMainActivity;->b()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    .line 271
    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6$1;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;)Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->queryCarbin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    goto :goto_0
.end method
