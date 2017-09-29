.class public Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;
.super Ljava/lang/Object;
.source "AmnetPost.java"

# interfaces
.implements Ljava/io/Serializable;


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

.field public important:Z

.field public reqSeqId:I

.field public secret:Z

.field public toBizSys:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->reqSeqId:I

    .line 18
    iput-boolean v1, p0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->secret:Z

    .line 20
    iput-boolean v1, p0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->important:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->toBizSys:Z

    return-void
.end method
