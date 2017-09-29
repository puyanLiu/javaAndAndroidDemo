.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;
.source "BillListResult.java"


# instance fields
.field public billStatementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonPageResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillStatementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillListResult;->billStatementList:Ljava/util/List;

    return-object v0
.end method

.method public setBillStatementList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/pcredit/model/BillStatement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/BillListResult;->billStatementList:Ljava/util/List;

    .line 42
    return-void
.end method
