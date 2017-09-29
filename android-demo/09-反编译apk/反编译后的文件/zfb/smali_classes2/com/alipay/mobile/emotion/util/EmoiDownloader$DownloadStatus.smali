.class public final enum Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;
.super Ljava/lang/Enum;
.source "EmoiDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Cancel:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

.field public static final enum Downloading:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

.field public static final enum Error:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

.field public static final enum Init:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

.field public static final enum Saleout:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

.field public static final enum Start:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

.field public static final enum Success:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    const-string/jumbo v1, "Init"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Init:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 9
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    const-string/jumbo v1, "Success"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Success:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 10
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    const-string/jumbo v1, "Error"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Error:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 11
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    const-string/jumbo v1, "Start"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Start:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 12
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    const-string/jumbo v1, "Cancel"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Cancel:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 13
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    const-string/jumbo v1, "Downloading"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Downloading:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 14
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    const-string/jumbo v1, "Saleout"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Saleout:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Init:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Success:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Error:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Start:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Cancel:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Downloading:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Saleout:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
