.class final Lcom/alipay/android/phone/businesscommon/advertisement/c/b;
.super Ljava/lang/Object;
.source "AdMisc.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    check-cast p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->priority:I

    iget v1, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method
