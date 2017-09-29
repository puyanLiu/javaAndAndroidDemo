.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/TenThousandIncome;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;
.source "TenThousandIncome.java"


# instance fields
.field private calDate:Ljava/lang/String;

.field private tenThousandIncomeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/TenThousandIncome;->calDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTenThousandIncomeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/TenThousandIncome;->tenThousandIncomeValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCalDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/TenThousandIncome;->calDate:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTenThousandIncomeValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/fund/model/TenThousandIncome;->tenThousandIncomeValue:Ljava/lang/String;

    .line 53
    return-void
.end method
