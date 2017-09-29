.class synthetic Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$14;
.super Ljava/lang/Object;
.source "EmotionDetailActivity.java"


# static fields
.field static final synthetic $SwitchMap$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 676
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->values()[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$14;->$SwitchMap$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$14;->$SwitchMap$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Cancel:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$14;->$SwitchMap$com$alipay$mobile$emotion$util$EmoiDownloader$DownloadStatus:[I

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Success:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
