.class public Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;
.super Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;


# instance fields
.field public appListData:Ljava/lang/String;

.field public appListVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/security/mobile/module/http/model/BaseResponseModel;-><init>()V

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;->appListData:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/security/mobile/module/http/model/AppListResponseModel;->appListVersion:Ljava/lang/String;

    return-void
.end method
