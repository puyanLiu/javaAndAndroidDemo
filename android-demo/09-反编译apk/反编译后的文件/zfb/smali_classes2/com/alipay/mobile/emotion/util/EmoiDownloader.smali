.class public Lcom/alipay/mobile/emotion/util/EmoiDownloader;
.super Ljava/lang/Object;
.source "EmoiDownloader.java"


# instance fields
.field private downloaderData:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

.field private id:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mStorePath:Ljava/lang/String;

.field private mType:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

.field private mUrl:Ljava/lang/String;

.field private packageId:Ljava/lang/String;

.field protected status:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alipay/mobile/emotion/util/EmoiDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Init:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    iput-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->status:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 36
    iput-object v1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mUrl:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->packageId:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->id:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mType:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    .line 41
    iput-object v1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mStorePath:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mFileName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->id:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mUrl:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->packageId:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mType:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    .line 54
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

    invoke-direct {v0}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->downloaderData:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

    .line 55
    return-void
.end method


# virtual methods
.method public getDownloaderData()Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->downloaderData:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;->preStatus:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->downloaderData:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

    iget-object v1, v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;->status:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->downloaderData:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->downloaderData:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

    iget-object v1, v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;->status:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    iput-object v1, v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;->preStatus:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->downloaderData:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->status:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    iput-object v1, v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;->status:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->downloaderData:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->status:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    return-object v0
.end method

.method public getmFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getmStorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mType:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    return-object v0
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadStatus(Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->status:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 58
    return-void
.end method

.method public setDownloaderData(Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->downloaderData:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloaderData;

    .line 162
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->id:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->packageId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setStatus(Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->status:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 97
    return-void
.end method

.method public setmFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mFileName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setmStorePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mStorePath:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setmType(Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mType:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    .line 137
    return-void
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmoiDownloader;->mUrl:Ljava/lang/String;

    .line 107
    return-void
.end method
