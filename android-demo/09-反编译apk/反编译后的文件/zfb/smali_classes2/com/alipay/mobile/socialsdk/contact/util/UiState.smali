.class public final enum Lcom/alipay/mobile/socialsdk/contact/util/UiState;
.super Ljava/lang/Enum;
.source "UiState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/socialsdk/contact/util/UiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/socialsdk/contact/util/UiState;

.field public static final enum Finished:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

.field public static final enum InitLoading:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

.field public static final enum Loaded:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

.field public static final enum Searching:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

.field public static final enum UnInit:Lcom/alipay/mobile/socialsdk/contact/util/UiState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    const-string/jumbo v1, "UnInit"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/util/UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->UnInit:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    const-string/jumbo v1, "InitLoading"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/socialsdk/contact/util/UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->InitLoading:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    const-string/jumbo v1, "Loaded"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/contact/util/UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->Loaded:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    const-string/jumbo v1, "Searching"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/socialsdk/contact/util/UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->Searching:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    const-string/jumbo v1, "Finished"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/socialsdk/contact/util/UiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->Finished:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->UnInit:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->InitLoading:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->Loaded:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->Searching:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->Finished:Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->ENUM$VALUES:[Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/contact/util/UiState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/socialsdk/contact/util/UiState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/socialsdk/contact/util/UiState;->ENUM$VALUES:[Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/socialsdk/contact/util/UiState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
