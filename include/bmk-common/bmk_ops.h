#ifndef _BMKCOMMON_BMK_OPS_H_
#define _BMKCOMMON_BMK_OPS_H_

struct bmk_ops {
	void (*bmk_halt)(void) __attribute__((noreturn));
};

extern const struct bmk_ops *bmk_ops;

#endif /* _BMKCOMMON_BMK_OPS_H_ */
