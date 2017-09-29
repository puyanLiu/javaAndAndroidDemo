.class public final enum Lcom/alipay/mobile/nebulacore/download/Downloader$Status;
.super Ljava/lang/Enum;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebulacore/download/Downloader$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

.field public static final enum FAILED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

.field public static final enum NONE:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

.field public static final enum PAUSED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

.field public static final enum PENDDING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

.field public static final enum SUCCEED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

.field private static final synthetic a:[Lcom/alipay/mobile/nebulacore/download/Downloader$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->NONE:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 15
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    const-string/jumbo v1, "PENDDING"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;-><init>(Ljava/lang/String;I)V

    .line 16
    sput-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PENDDING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 18
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    const-string/jumbo v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 21
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;-><init>(Ljava/lang/String;I)V

    .line 22
    sput-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PAUSED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 24
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->FAILED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 27
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    const-string/jumbo v1, "SUCCEED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->SUCCEED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->NONE:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PENDDING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PAUSED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->FAILED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->SUCCEED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->a:[Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/Downloader$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulacore/download/Downloader$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->a:[Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
