.class public Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;
.super Ljava/lang/Object;
.source "AcceptedData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public channel:B

.field public compressSize:I

.field public data:[B

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public readTiming:D

.field public uncompressSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
