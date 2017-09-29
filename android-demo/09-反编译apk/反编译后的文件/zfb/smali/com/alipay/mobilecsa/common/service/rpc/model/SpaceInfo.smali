.class public Lcom/alipay/mobilecsa/common/service/rpc/model/SpaceInfo;
.super Ljava/lang/Object;
.source "SpaceInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public height:I

.field public spaceCode:Ljava/lang/String;

.field public spaceObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/SpaceObjectInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
