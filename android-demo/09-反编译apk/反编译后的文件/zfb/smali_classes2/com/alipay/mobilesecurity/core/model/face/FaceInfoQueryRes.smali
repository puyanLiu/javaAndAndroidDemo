.class public Lcom/alipay/mobilesecurity/core/model/face/FaceInfoQueryRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public baoxianLetter:Ljava/lang/String;

.field public clickLetter:Ljava/lang/String;

.field public clickUrl:Ljava/lang/String;

.field public faceCollected:Z

.field public faceLoginOpen:Z

.field public faceO2OOpen:Z

.field public showClick:Z

.field public showFaceLoginSwitch:Z

.field public showFaceO2OSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/face/FaceInfoQueryRes;->showFaceLoginSwitch:Z

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/face/FaceInfoQueryRes;->faceLoginOpen:Z

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/face/FaceInfoQueryRes;->showFaceO2OSwitch:Z

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/face/FaceInfoQueryRes;->faceO2OOpen:Z

    iput-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/face/FaceInfoQueryRes;->faceCollected:Z

    return-void
.end method
