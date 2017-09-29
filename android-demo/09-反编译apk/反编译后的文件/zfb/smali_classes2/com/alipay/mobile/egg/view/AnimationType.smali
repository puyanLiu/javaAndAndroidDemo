.class public final enum Lcom/alipay/mobile/egg/view/AnimationType;
.super Ljava/lang/Enum;
.source "AnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/egg/view/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BottomToTop:Lcom/alipay/mobile/egg/view/AnimationType;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/egg/view/AnimationType;

.field public static final enum LeftToRight:Lcom/alipay/mobile/egg/view/AnimationType;

.field public static final enum None:Lcom/alipay/mobile/egg/view/AnimationType;

.field public static final enum RightToLeft:Lcom/alipay/mobile/egg/view/AnimationType;

.field public static final enum TopToBottom:Lcom/alipay/mobile/egg/view/AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/alipay/mobile/egg/view/AnimationType;

    const-string/jumbo v1, "BottomToTop"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/egg/view/AnimationType;-><init>(Ljava/lang/String;I)V

    .line 13
    sput-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->BottomToTop:Lcom/alipay/mobile/egg/view/AnimationType;

    .line 15
    new-instance v0, Lcom/alipay/mobile/egg/view/AnimationType;

    const-string/jumbo v1, "TopToBottom"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/egg/view/AnimationType;-><init>(Ljava/lang/String;I)V

    .line 18
    sput-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->TopToBottom:Lcom/alipay/mobile/egg/view/AnimationType;

    .line 20
    new-instance v0, Lcom/alipay/mobile/egg/view/AnimationType;

    const-string/jumbo v1, "LeftToRight"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/egg/view/AnimationType;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->LeftToRight:Lcom/alipay/mobile/egg/view/AnimationType;

    .line 25
    new-instance v0, Lcom/alipay/mobile/egg/view/AnimationType;

    const-string/jumbo v1, "RightToLeft"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/egg/view/AnimationType;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->RightToLeft:Lcom/alipay/mobile/egg/view/AnimationType;

    .line 30
    new-instance v0, Lcom/alipay/mobile/egg/view/AnimationType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/egg/view/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->None:Lcom/alipay/mobile/egg/view/AnimationType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/egg/view/AnimationType;

    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->BottomToTop:Lcom/alipay/mobile/egg/view/AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->TopToBottom:Lcom/alipay/mobile/egg/view/AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->LeftToRight:Lcom/alipay/mobile/egg/view/AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->RightToLeft:Lcom/alipay/mobile/egg/view/AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/egg/view/AnimationType;->None:Lcom/alipay/mobile/egg/view/AnimationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->ENUM$VALUES:[Lcom/alipay/mobile/egg/view/AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/egg/view/AnimationType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/egg/view/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/view/AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/egg/view/AnimationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/egg/view/AnimationType;->ENUM$VALUES:[Lcom/alipay/mobile/egg/view/AnimationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/egg/view/AnimationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
