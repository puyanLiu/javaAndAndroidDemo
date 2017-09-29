.class public final enum Lcom/googlecode/androidannotations/annotations/EBean$Scope;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/googlecode/androidannotations/annotations/EBean$Scope;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Default:Lcom/googlecode/androidannotations/annotations/EBean$Scope;

.field public static final enum Singleton:Lcom/googlecode/androidannotations/annotations/EBean$Scope;

.field private static final synthetic a:[Lcom/googlecode/androidannotations/annotations/EBean$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    const-string/jumbo v1, "Default"

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/annotations/EBean$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/EBean$Scope;->Default:Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    new-instance v0, Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    const-string/jumbo v1, "Singleton"

    invoke-direct {v0, v1, v3}, Lcom/googlecode/androidannotations/annotations/EBean$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/EBean$Scope;->Singleton:Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    sget-object v1, Lcom/googlecode/androidannotations/annotations/EBean$Scope;->Default:Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    aput-object v1, v0, v2

    sget-object v1, Lcom/googlecode/androidannotations/annotations/EBean$Scope;->Singleton:Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    aput-object v1, v0, v3

    sput-object v0, Lcom/googlecode/androidannotations/annotations/EBean$Scope;->a:[Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/androidannotations/annotations/EBean$Scope;
    .locals 1

    const-class v0, Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    return-object v0
.end method

.method public static values()[Lcom/googlecode/androidannotations/annotations/EBean$Scope;
    .locals 1

    sget-object v0, Lcom/googlecode/androidannotations/annotations/EBean$Scope;->a:[Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    invoke-virtual {v0}, [Lcom/googlecode/androidannotations/annotations/EBean$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/androidannotations/annotations/EBean$Scope;

    return-object v0
.end method
