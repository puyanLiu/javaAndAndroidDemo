.class public Lcom/alipay/mobile/common/transportext/Transport$Posting;
.super Ljava/lang/Object;
.source "Transport.java"


# instance fields
.field public body:[B

.field public channel:B

.field public header:Ljava/util/Map;
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

.field public id:J

.field public important:Z

.field public nearing:Z

.field public receipt:J

.field public secret:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
