.class public Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizSubType:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public extInfo:Ljava/lang/String;

.field public messageCard:Lcom/alipay/mobileprod/biz/transfer/model/MessageCardInfo;

.field public payerGradeAFlag:Ljava/lang/String;

.field public receiverUserId:Ljava/lang/String;

.field public riskLevel:Ljava/lang/String;

.field public riskLevelMessage:Ljava/lang/String;

.field public toQuickPayCashier:Z

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/CreateToAccountResp;->toQuickPayCashier:Z

    return-void
.end method
