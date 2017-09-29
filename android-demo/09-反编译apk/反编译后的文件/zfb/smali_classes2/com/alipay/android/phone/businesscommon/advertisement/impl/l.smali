.class public final Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;
.super Ljava/lang/Object;
.source "AdSpaceBehaviorManager.java"


# static fields
.field private static a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    .line 38
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 4

    .prologue
    .line 46
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string/jumbo v1, "ANNOUNCEMENT"

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    const-string/jumbo v1, "BANNER"

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    const-string/jumbo v1, "NOTIFY"

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    :cond_2
    const-string/jumbo v1, "AdShow"

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    const-string/jumbo v1, "LIST"

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 60
    const-string/jumbo v1, "ROTATION"

    iget-object v2, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 63
    const-string/jumbo v2, "AdShow"

    iget-object v3, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "not support multistyle at onUerBehaviorShow:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v6

    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/m;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method
