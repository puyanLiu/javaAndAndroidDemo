.class Lluajc$1;
.super Ljava/lang/ClassLoader;


# instance fields
.field private final a:Ljava/util/Hashtable;

.field private final b:Lluajc;


# direct methods
.method constructor <init>(Lluajc;Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    iput-object p1, p0, Lluajc$1;->b:Lluajc;

    iput-object p2, p0, Lluajc$1;->a:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lluajc$1;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lluajc$1;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
