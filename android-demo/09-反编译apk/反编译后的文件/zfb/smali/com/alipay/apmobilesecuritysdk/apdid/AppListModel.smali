.class public Lcom/alipay/apmobilesecuritysdk/apdid/AppListModel;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/AppListModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/AppListModel;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppListData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/AppListModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppListVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/AppListModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAppListData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/AppListModel;->b:Ljava/lang/String;

    return-void
.end method

.method public setAppListVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/AppListModel;->a:Ljava/lang/String;

    return-void
.end method
