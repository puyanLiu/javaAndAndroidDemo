.class public Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadState;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_ERROR:I = 0x1

.field public static final STATE_SUCCESS:I = 0x0

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UPLOADING:I = 0x2

.field public static final STATE_UPLOAD_CANCEL:I = 0x3


# instance fields
.field private state:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadState;->state:I

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadState;->state:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadState;->state:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APAudioUploadState{state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/audio/data/APAudioUploadState;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
