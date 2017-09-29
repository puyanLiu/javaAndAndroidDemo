.class public Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoRecordRsp;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_ERR_CAMERA_OPEN:I = 0x64

.field public static final CODE_ERR_MIC_BAD_VALUE:I = 0x4

.field public static final CODE_ERR_MIC_INVALID_BUFFER_INDEX:I = 0x5

.field public static final CODE_ERR_MIC_INVALID_OPERATION:I = 0x3

.field public static final CODE_ERR_MIC_PERMISSION_DENIED:I = 0x2

.field public static final CODE_ERR_MIC_STOP_FAILED:I = 0x6

.field public static final CODE_ERR_MIC_UNKNOWN_ERROR:I = 0x1

.field public static final CODE_ERR_SDCARD_UNAVAILABLE:I = 0xc8

.field public static final CODE_SUCCESS:I


# instance fields
.field public mCamera:Landroid/hardware/Camera;

.field public mHeight:I

.field public mId:Ljava/lang/String;

.field public mRspCode:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoRecordRsp;->mId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoRecordRsp;->mRspCode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APVideoRecordRsp{mId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoRecordRsp;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRspCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/video/data/APVideoRecordRsp;->mRspCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
