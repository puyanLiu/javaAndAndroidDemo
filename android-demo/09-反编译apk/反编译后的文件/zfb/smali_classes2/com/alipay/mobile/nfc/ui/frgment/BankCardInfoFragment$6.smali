.class Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;
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
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    iput-object p2, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;->b:Lcom/alipay/nfc/model/CardInfo;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;)Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;->a:Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;->a(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment;)Lcom/alipay/mobile/nfc/ui/NFCMainActivity;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;->b:Lcom/alipay/nfc/model/CardInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;->b:Lcom/alipay/nfc/model/CardInfo;

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardInfo;->getCard_type()Lcom/alipay/nfc/model/CardTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/model/CardTypeEnum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v2

    invoke-static {}, Lcom/alipay/mobile/nfc/app/LogAgent;->k()V

    .line 264
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6$1;-><init>(Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 301
    return-void

    .line 263
    :cond_0
    const-string/jumbo v0, "BANK_CARD"

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/alipay/mobile/nfc/ui/frgment/BankCardInfoFragment$6;->a()V

    .line 306
    return-void
.end method
