.class public final enum Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
.super Ljava/lang/Enum;
.source "AppInstallerTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

.field public static final enum nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "nativeApp"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 14
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "independantApp"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 15
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "innerApp"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 16
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    const-string/jumbo v1, "H5App"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    const-string/jumbo v1, "nativeApp"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string/jumbo v1, "independantApp"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string/jumbo v1, "innerApp"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string/jumbo v1, "H5App"

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ENUM$VALUES:[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
