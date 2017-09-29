.class public Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;
.super Ljava/lang/Object;
.source "SecDataModel.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthType()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;->b:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWearType()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;->a:I

    return v0
.end method

.method public setAuthType(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;->b:I

    .line 44
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;->c:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setWearType(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;->a:I

    .line 28
    return-void
.end method
