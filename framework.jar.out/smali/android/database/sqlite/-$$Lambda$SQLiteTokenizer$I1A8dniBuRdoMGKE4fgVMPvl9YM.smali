.class public final synthetic Landroid/database/sqlite/-$$Lambda$SQLiteTokenizer$I1A8dniBuRdoMGKE4fgVMPvl9YM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/-$$Lambda$SQLiteTokenizer$I1A8dniBuRdoMGKE4fgVMPvl9YM;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/database/sqlite/-$$Lambda$SQLiteTokenizer$I1A8dniBuRdoMGKE4fgVMPvl9YM;->f$0:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteTokenizer;->lambda$I1A8dniBuRdoMGKE4fgVMPvl9YM(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    return-void
.end method
