.class public final Lorg/jacoco/core/JaCoCo;
.super Ljava/lang/Object;


# static fields
.field public static final ASM_API_VERSION:I = 0x50000

.field public static final HOMEURL:Ljava/lang/String;

.field public static final RUNTIMEPACKAGE:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "org.jacoco.core.jacoco"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/core/JaCoCo;->VERSION:Ljava/lang/String;

    const-string/jumbo v1, "HOMEURL"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jacoco/core/JaCoCo;->HOMEURL:Ljava/lang/String;

    const-string/jumbo v0, "org.jacoco.agent.rt.internal"

    sput-object v0, Lorg/jacoco/core/JaCoCo;->RUNTIMEPACKAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
