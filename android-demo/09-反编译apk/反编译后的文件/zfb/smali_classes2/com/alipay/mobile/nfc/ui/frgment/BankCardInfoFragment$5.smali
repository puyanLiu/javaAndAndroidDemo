.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;
.super Ljava/lang/Object;
.source "BankCardInfoFragment.java"

# interfaces
.implements Lcom/alipay/mobile/nfc/strategy/BusinessJumpable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

.field private final synthetic b:Lcom/alipay/nfc/model/CardInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;Lcom/alipay/nfc/model/CardInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    iput-object p2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->b:Lcom/alipay/nfc/model/CardInfo;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->b:Lcom/alipay/nfc/model/CardInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v3

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->j()V

    .line 236
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->b:Lcom/alipay/nfc/model/CardInfo;

    if-eqz v0, :cond_0

    .line 238
    const-string/jumbo v0, "actionType"

    const-string/jumbo v2, "toCard"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v0, "cardNo"

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/cardbin/CardbinManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/cardbin/CardbinManager;->queryCarbin(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    const-string/jumbo v2, "bankMark"

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/cardbin/Cardbin;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getBandAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "20000071"

    const-string/jumbo v3, "09999988"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_1
    return-void

    .line 235
    :cond_1
    const-string/jumbo v0, "BANK_CARD"

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$5;->a()V

    .line 257
    return-void
.end method
