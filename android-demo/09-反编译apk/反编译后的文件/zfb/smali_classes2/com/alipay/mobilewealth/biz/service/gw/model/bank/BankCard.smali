.class public Lcom/alipay/mobilewealth/biz/service/gw/model/bank/BankCard;
.super Lcom/alipay/mobilewealth/core/model/models/bank/BaseBankCard;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementNo:Ljava/lang/String;

.field public bankCardHolderInfo:Lcom/alipay/mobilewealth/core/model/models/bank/BankCardHolderInfo;

.field public cardBrand:Ljava/lang/String;

.field public cardIndexNo:Ljava/lang/String;

.field public enableApplyFP:Z

.field public enableDelete:Z

.field public hasBankService:Z

.field public hasBill:Z

.field public instMark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/core/model/models/bank/BaseBankCard;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/model/bank/BankCard;->enableApplyFP:Z

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/model/bank/BankCard;->enableDelete:Z

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/model/bank/BankCard;->hasBankService:Z

    return-void
.end method
