.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;
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
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    iput-object p2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->b:Lcom/alipay/nfc/model/CardInfo;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->b:Lcom/alipay/nfc/model/CardInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->h()V

    .line 168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->b:Lcom/alipay/nfc/model/CardInfo;

    if-eqz v0, :cond_0

    .line 170
    const-string/jumbo v0, "cardNo"

    iget-object v2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v2}, Lcom/alipay/nfc/model/CardInfo;->getSerl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    const-string/jumbo v2, "certNo"

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "idcard"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v2, "inputName"

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v3, "name"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->b(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v2, "20000071"

    const-string/jumbo v3, "09999983"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    return-void

    .line 167
    :cond_1
    const-string/jumbo v0, "BANK_CARD"

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$3;->a()V

    .line 187
    return-void
.end method
