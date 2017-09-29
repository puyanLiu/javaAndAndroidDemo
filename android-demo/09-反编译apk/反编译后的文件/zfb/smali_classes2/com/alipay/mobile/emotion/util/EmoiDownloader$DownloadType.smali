.class public final enum Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;
.super Ljava/lang/Enum;
.source "EmoiDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

.field public static final enum b:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

.field public static final enum gif:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

.field public static final enum icon:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

.field public static final enum s:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

.field public static final enum sound:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

.field public static final enum zip:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    const-string/jumbo v1, "sound"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->sound:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    .line 25
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    const-string/jumbo v1, "gif"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->gif:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    .line 27
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    const-string/jumbo v1, "b"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->b:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    .line 29
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    const-string/jumbo v1, "s"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->s:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    .line 31
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    const-string/jumbo v1, "icon"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->icon:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    .line 33
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    const-string/jumbo v1, "zip"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->zip:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->sound:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->gif:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->b:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->s:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->icon:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->zip:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
