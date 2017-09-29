.class public Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "SecurityKabaoCommonResult.java"


# instance fields
.field public resultCode:Ljava/lang/String;

.field public resultDesc:Ljava/lang/String;

.field public resultView:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->success:Z

    .line 8
    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getResultView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultView:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->success:Z

    return v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultCode:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setResultDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultDesc:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setResultView(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultView:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->success:Z

    .line 19
    return-void
.end method
