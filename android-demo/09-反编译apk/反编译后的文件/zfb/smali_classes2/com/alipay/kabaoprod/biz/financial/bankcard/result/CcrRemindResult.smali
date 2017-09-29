.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CcrRemindResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
.source "CcrRemindResult.java"


# instance fields
.field public remindDbId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemindDbId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CcrRemindResult;->remindDbId:Ljava/lang/String;

    return-object v0
.end method

.method public setRemindDbId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CcrRemindResult;->remindDbId:Ljava/lang/String;

    .line 41
    return-void
.end method
